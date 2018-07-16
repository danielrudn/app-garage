import React from 'react';
import SearchResult from './SearchResult';

export default ({ results, loading }) => (
  <div
    className="ui raised segment no padding"
    style={{
      position: 'absolute',
      width: '100%',
      left: '0px',
      top: '75%',
      visibility: results.length === 0 ? 'hidden' : 'visible',
      zIndex: '99',
      height: '256px',
      overflowY: 'scroll'
    }}
  >
    {loading ? (
      <div className="ui active inverted dimmer">
        <div className="ui text loader">Loading...</div>
      </div>
    ) : (
      <div className="ui relaxed divided link items">
        {results.map(result => <SearchResult key={result.id} result={result} />)}
      </div>
    )}
  </div>
);
