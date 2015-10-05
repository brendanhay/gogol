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
-- Module      : Network.Google.Resource.Webmasters.URLCrawlErrorsSamples.MarkAsFixed
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Marks the provided site\'s sample URL as fixed, and removes it from the
-- samples list.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersURLCrawlErrorsSamplesMarkAsFixed@.
module Network.Google.Resource.Webmasters.URLCrawlErrorsSamples.MarkAsFixed
    (
    -- * REST Resource
      URLCrawlErrorsSamplesMarkAsFixedResource

    -- * Creating a Request
    , urlCrawlErrorsSamplesMarkAsFixed'
    , URLCrawlErrorsSamplesMarkAsFixed'

    -- * Request Lenses
    , ucesmafQuotaUser
    , ucesmafPrettyPrint
    , ucesmafPlatform
    , ucesmafUserIP
    , ucesmafCategory
    , ucesmafSiteURL
    , ucesmafURL
    , ucesmafKey
    , ucesmafOAuthToken
    , ucesmafFields
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersURLCrawlErrorsSamplesMarkAsFixed@ which the
-- 'URLCrawlErrorsSamplesMarkAsFixed'' request conforms to.
type URLCrawlErrorsSamplesMarkAsFixedResource =
     "sites" :>
       Capture "siteUrl" Text :>
         "urlCrawlErrorsSamples" :>
           Capture "url" Text :>
             QueryParam "category"
               URLCrawlErrorsSamplesMarkAsFixedCategory
               :>
               QueryParam "platform"
                 URLCrawlErrorsSamplesMarkAsFixedPlatform
                 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Marks the provided site\'s sample URL as fixed, and removes it from the
-- samples list.
--
-- /See:/ 'urlCrawlErrorsSamplesMarkAsFixed'' smart constructor.
data URLCrawlErrorsSamplesMarkAsFixed' = URLCrawlErrorsSamplesMarkAsFixed'
    { _ucesmafQuotaUser   :: !(Maybe Text)
    , _ucesmafPrettyPrint :: !Bool
    , _ucesmafPlatform    :: !URLCrawlErrorsSamplesMarkAsFixedPlatform
    , _ucesmafUserIP      :: !(Maybe Text)
    , _ucesmafCategory    :: !URLCrawlErrorsSamplesMarkAsFixedCategory
    , _ucesmafSiteURL     :: !Text
    , _ucesmafURL         :: !Text
    , _ucesmafKey         :: !(Maybe AuthKey)
    , _ucesmafOAuthToken  :: !(Maybe OAuthToken)
    , _ucesmafFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLCrawlErrorsSamplesMarkAsFixed'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucesmafQuotaUser'
--
-- * 'ucesmafPrettyPrint'
--
-- * 'ucesmafPlatform'
--
-- * 'ucesmafUserIP'
--
-- * 'ucesmafCategory'
--
-- * 'ucesmafSiteURL'
--
-- * 'ucesmafURL'
--
-- * 'ucesmafKey'
--
-- * 'ucesmafOAuthToken'
--
-- * 'ucesmafFields'
urlCrawlErrorsSamplesMarkAsFixed'
    :: URLCrawlErrorsSamplesMarkAsFixedPlatform -- ^ 'platform'
    -> URLCrawlErrorsSamplesMarkAsFixedCategory -- ^ 'category'
    -> Text -- ^ 'siteUrl'
    -> Text -- ^ 'url'
    -> URLCrawlErrorsSamplesMarkAsFixed'
urlCrawlErrorsSamplesMarkAsFixed' pUcesmafPlatform_ pUcesmafCategory_ pUcesmafSiteURL_ pUcesmafURL_ =
    URLCrawlErrorsSamplesMarkAsFixed'
    { _ucesmafQuotaUser = Nothing
    , _ucesmafPrettyPrint = True
    , _ucesmafPlatform = pUcesmafPlatform_
    , _ucesmafUserIP = Nothing
    , _ucesmafCategory = pUcesmafCategory_
    , _ucesmafSiteURL = pUcesmafSiteURL_
    , _ucesmafURL = pUcesmafURL_
    , _ucesmafKey = Nothing
    , _ucesmafOAuthToken = Nothing
    , _ucesmafFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ucesmafQuotaUser :: Lens' URLCrawlErrorsSamplesMarkAsFixed' (Maybe Text)
ucesmafQuotaUser
  = lens _ucesmafQuotaUser
      (\ s a -> s{_ucesmafQuotaUser = a})

-- | Returns response with indentations and line breaks.
ucesmafPrettyPrint :: Lens' URLCrawlErrorsSamplesMarkAsFixed' Bool
ucesmafPrettyPrint
  = lens _ucesmafPrettyPrint
      (\ s a -> s{_ucesmafPrettyPrint = a})

-- | The user agent type (platform) that made the request. For example: web
ucesmafPlatform :: Lens' URLCrawlErrorsSamplesMarkAsFixed' URLCrawlErrorsSamplesMarkAsFixedPlatform
ucesmafPlatform
  = lens _ucesmafPlatform
      (\ s a -> s{_ucesmafPlatform = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ucesmafUserIP :: Lens' URLCrawlErrorsSamplesMarkAsFixed' (Maybe Text)
ucesmafUserIP
  = lens _ucesmafUserIP
      (\ s a -> s{_ucesmafUserIP = a})

-- | The crawl error category. For example: authPermissions
ucesmafCategory :: Lens' URLCrawlErrorsSamplesMarkAsFixed' URLCrawlErrorsSamplesMarkAsFixedCategory
ucesmafCategory
  = lens _ucesmafCategory
      (\ s a -> s{_ucesmafCategory = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
ucesmafSiteURL :: Lens' URLCrawlErrorsSamplesMarkAsFixed' Text
ucesmafSiteURL
  = lens _ucesmafSiteURL
      (\ s a -> s{_ucesmafSiteURL = a})

-- | The relative path (without the site) of the sample URL. It must be one
-- of the URLs returned by list(). For example, for the URL
-- https:\/\/www.example.com\/pagename on the site
-- https:\/\/www.example.com\/, the url value is pagename
ucesmafURL :: Lens' URLCrawlErrorsSamplesMarkAsFixed' Text
ucesmafURL
  = lens _ucesmafURL (\ s a -> s{_ucesmafURL = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ucesmafKey :: Lens' URLCrawlErrorsSamplesMarkAsFixed' (Maybe AuthKey)
ucesmafKey
  = lens _ucesmafKey (\ s a -> s{_ucesmafKey = a})

-- | OAuth 2.0 token for the current user.
ucesmafOAuthToken :: Lens' URLCrawlErrorsSamplesMarkAsFixed' (Maybe OAuthToken)
ucesmafOAuthToken
  = lens _ucesmafOAuthToken
      (\ s a -> s{_ucesmafOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ucesmafFields :: Lens' URLCrawlErrorsSamplesMarkAsFixed' (Maybe Text)
ucesmafFields
  = lens _ucesmafFields
      (\ s a -> s{_ucesmafFields = a})

instance GoogleAuth URLCrawlErrorsSamplesMarkAsFixed'
         where
        authKey = ucesmafKey . _Just
        authToken = ucesmafOAuthToken . _Just

instance GoogleRequest
         URLCrawlErrorsSamplesMarkAsFixed' where
        type Rs URLCrawlErrorsSamplesMarkAsFixed' = ()
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u
          URLCrawlErrorsSamplesMarkAsFixed'{..}
          = go _ucesmafSiteURL _ucesmafURL
              (Just _ucesmafCategory)
              (Just _ucesmafPlatform)
              _ucesmafQuotaUser
              (Just _ucesmafPrettyPrint)
              _ucesmafUserIP
              _ucesmafFields
              _ucesmafKey
              _ucesmafOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy URLCrawlErrorsSamplesMarkAsFixedResource)
                      r
                      u
