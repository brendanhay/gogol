{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Webmasters.Sitemaps.Submit
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Submits a sitemap for a site.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersSitemapsSubmit@.
module Network.Google.Resource.Webmasters.Sitemaps.Submit
    (
    -- * REST Resource
      SitemapsSubmitResource

    -- * Creating a Request
    , sitemapsSubmit'
    , SitemapsSubmit'

    -- * Request Lenses
    , ssQuotaUser
    , ssPrettyPrint
    , ssFeedpath
    , ssUserIP
    , ssSiteURL
    , ssKey
    , ssOAuthToken
    , ssFields
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitemapsSubmit@ method which the
-- 'SitemapsSubmit'' request conforms to.
type SitemapsSubmitResource =
     "sites" :>
       Capture "siteUrl" Text :>
         "sitemaps" :>
           Capture "feedpath" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Put '[JSON] ()

-- | Submits a sitemap for a site.
--
-- /See:/ 'sitemapsSubmit'' smart constructor.
data SitemapsSubmit' = SitemapsSubmit'
    { _ssQuotaUser   :: !(Maybe Text)
    , _ssPrettyPrint :: !Bool
    , _ssFeedpath    :: !Text
    , _ssUserIP      :: !(Maybe Text)
    , _ssSiteURL     :: !Text
    , _ssKey         :: !(Maybe AuthKey)
    , _ssOAuthToken  :: !(Maybe OAuthToken)
    , _ssFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitemapsSubmit'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssQuotaUser'
--
-- * 'ssPrettyPrint'
--
-- * 'ssFeedpath'
--
-- * 'ssUserIP'
--
-- * 'ssSiteURL'
--
-- * 'ssKey'
--
-- * 'ssOAuthToken'
--
-- * 'ssFields'
sitemapsSubmit'
    :: Text -- ^ 'feedpath'
    -> Text -- ^ 'siteUrl'
    -> SitemapsSubmit'
sitemapsSubmit' pSsFeedpath_ pSsSiteURL_ =
    SitemapsSubmit'
    { _ssQuotaUser = Nothing
    , _ssPrettyPrint = True
    , _ssFeedpath = pSsFeedpath_
    , _ssUserIP = Nothing
    , _ssSiteURL = pSsSiteURL_
    , _ssKey = Nothing
    , _ssOAuthToken = Nothing
    , _ssFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ssQuotaUser :: Lens' SitemapsSubmit' (Maybe Text)
ssQuotaUser
  = lens _ssQuotaUser (\ s a -> s{_ssQuotaUser = a})

-- | Returns response with indentations and line breaks.
ssPrettyPrint :: Lens' SitemapsSubmit' Bool
ssPrettyPrint
  = lens _ssPrettyPrint
      (\ s a -> s{_ssPrettyPrint = a})

-- | The URL of the sitemap to add. For example:
-- http:\/\/www.example.com\/sitemap.xml
ssFeedpath :: Lens' SitemapsSubmit' Text
ssFeedpath
  = lens _ssFeedpath (\ s a -> s{_ssFeedpath = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ssUserIP :: Lens' SitemapsSubmit' (Maybe Text)
ssUserIP = lens _ssUserIP (\ s a -> s{_ssUserIP = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
ssSiteURL :: Lens' SitemapsSubmit' Text
ssSiteURL
  = lens _ssSiteURL (\ s a -> s{_ssSiteURL = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ssKey :: Lens' SitemapsSubmit' (Maybe AuthKey)
ssKey = lens _ssKey (\ s a -> s{_ssKey = a})

-- | OAuth 2.0 token for the current user.
ssOAuthToken :: Lens' SitemapsSubmit' (Maybe OAuthToken)
ssOAuthToken
  = lens _ssOAuthToken (\ s a -> s{_ssOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ssFields :: Lens' SitemapsSubmit' (Maybe Text)
ssFields = lens _ssFields (\ s a -> s{_ssFields = a})

instance GoogleAuth SitemapsSubmit' where
        _AuthKey = ssKey . _Just
        _AuthToken = ssOAuthToken . _Just

instance GoogleRequest SitemapsSubmit' where
        type Rs SitemapsSubmit' = ()
        request = requestWith webmasterToolsRequest
        requestWith rq SitemapsSubmit'{..}
          = go _ssSiteURL _ssFeedpath _ssQuotaUser
              (Just _ssPrettyPrint)
              _ssUserIP
              _ssFields
              _ssKey
              _ssOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy SitemapsSubmitResource)
                      rq
