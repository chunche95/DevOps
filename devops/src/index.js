import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import { Home, Pages, ContentLink}  from "./Contents"

const Header =  () => { 
  return (
    <>
      <Home>
          <Pages>
              <ContentLink to="/home" activeStyle>
                  Home
              </ContentLink>
              <ContentLink to="/home" activeStyle>
                  Home
              </ContentLink>
              <ContentLink to="/home" activeStyle>
                  Home
              </ContentLink>
          </Pages>
      </Home>
    </>
  )
};

export default Header;