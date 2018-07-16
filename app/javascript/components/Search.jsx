import React from 'react';
import axios from 'axios';
import SearchResultList from './SearchResultList';

export default class Search extends React.Component {
  state = { loading: false, results: [] };

  onChange = (e) => {
    const { value } = e.target;
    this.setState({ loading: true });
    if (value.length > 0) { 
      axios.get('/search.json', { params: { query: value } })
        .then(res => this.setState({ loading: false, results: res.data }))
        .catch(() => this.setState({ loading: false, results: [] }));
    } else {
      this.setState({ loading: false, results: [] });
    }
  }

  render() {
    const { loading, results } = this.state;
    return (
      <div className="ui raised segment no padding">
        <form method="GET" action="search">
          <div className="ui fluid icon transparent large input">
            <input name="query" type="text" placeholder="Search apps..." onChange={this.onChange} autoComplete="off" />
            <button type="submit">
              <i className="search icon"></i>
            </button>
          </div>
          {results.length > 0 || loading ? <SearchResultList results={results} loading={loading} /> : null}
        </form>
      </div>
    );
  }
}