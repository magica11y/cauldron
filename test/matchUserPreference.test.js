// @flow

import matchUserPreference, { mockWindowMatchMedia } from '../src';

describe('matchUserPreference()', () => {
  it('returns true if media query matches', () => {
    window.matchMedia = jest.fn().mockImplementation(() => mockWindowMatchMedia(true, `(example-key: example-value)`));

    expect(matchUserPreference('example-key', 'example-value')).toBe(true);
  });

  it('returns false if media query does not match', () => {
    window.matchMedia = jest.fn().mockImplementation(() => mockWindowMatchMedia(false, `(example-key: example-value)`));

    expect(matchUserPreference('example-key', 'example-value')).toBe(false);
  });

  it('returns false if media query does not match but media query string matches', () => {
    window.matchMedia = jest.fn().mockImplementation(() => mockWindowMatchMedia(true, `not all`));

    expect(matchUserPreference('example-key', 'example-value')).toBe(false);
  });
});
