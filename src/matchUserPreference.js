// @flow

const matchUserPreference = (mediaQueryKey: string, mediaQueryValue: string): ?boolean => {
  const mediaQueryString = `(${mediaQueryKey}: ${mediaQueryValue})`;
  const mediaQuery: MediaQueryList = window.matchMedia(mediaQueryString);

  return mediaQuery.media === mediaQueryString && mediaQuery.matches;
};

export default matchUserPreference;
