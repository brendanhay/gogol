{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Webmasters.URLcrawlerrorssamples.MarkAsFixed
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Marks the provided site\'s sample URL as fixed, and removes it from the
-- samples list.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersURLcrawlerrorssamplesMarkAsFixed@.
module Network.Google.Resource.Webmasters.URLcrawlerrorssamples.MarkAsFixed
    (
    -- * REST Resource
      UrlcrawlerrorssamplesMarkAsFixedResource

    -- * Creating a Request
    , uRLcrawlerrorssamplesMarkAsFixed'
    , URLcrawlerrorssamplesMarkAsFixed'

    -- * Request Lenses
    , umafQuotaUser
    , umafPrettyPrint
    , umafPlatform
    , umafUserIP
    , umafCategory
    , umafSiteURL
    , umafURL
    , umafKey
    , umafOAuthToken
    , umafFields
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersURLcrawlerrorssamplesMarkAsFixed@ which the
-- 'URLcrawlerrorssamplesMarkAsFixed'' request conforms to.
type UrlcrawlerrorssamplesMarkAsFixedResource =
     "sites" :>
       Capture "siteUrl" Text :>
         "urlCrawlErrorsSamples" :>
           Capture "url" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "platform"
                   WebmastersURLcrawlerrorssamplesMarkAsFixedPlatform
                   :>
                   QueryParam "userIp" Text :>
                     QueryParam "category"
                       WebmastersURLcrawlerrorssamplesMarkAsFixedCategory
                       :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Marks the provided site\'s sample URL as fixed, and removes it from the
-- samples list.
--
-- /See:/ 'uRLcrawlerrorssamplesMarkAsFixed'' smart constructor.
data URLcrawlerrorssamplesMarkAsFixed' = URLcrawlerrorssamplesMarkAsFixed'
    { _umafQuotaUser   :: !(Maybe Text)
    , _umafPrettyPrint :: !Bool
    , _umafPlatform    :: !WebmastersURLcrawlerrorssamplesMarkAsFixedPlatform
    , _umafUserIP      :: !(Maybe Text)
    , _umafCategory    :: !WebmastersURLcrawlerrorssamplesMarkAsFixedCategory
    , _umafSiteURL     :: !Text
    , _umafURL         :: !Text
    , _umafKey         :: !(Maybe Key)
    , _umafOAuthToken  :: !(Maybe OAuthToken)
    , _umafFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLcrawlerrorssamplesMarkAsFixed'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umafQuotaUser'
--
-- * 'umafPrettyPrint'
--
-- * 'umafPlatform'
--
-- * 'umafUserIP'
--
-- * 'umafCategory'
--
-- * 'umafSiteURL'
--
-- * 'umafURL'
--
-- * 'umafKey'
--
-- * 'umafOAuthToken'
--
-- * 'umafFields'
uRLcrawlerrorssamplesMarkAsFixed'
    :: WebmastersURLcrawlerrorssamplesMarkAsFixedPlatform -- ^ 'platform'
    -> WebmastersURLcrawlerrorssamplesMarkAsFixedCategory -- ^ 'category'
    -> Text -- ^ 'siteUrl'
    -> Text -- ^ 'url'
    -> URLcrawlerrorssamplesMarkAsFixed'
uRLcrawlerrorssamplesMarkAsFixed' pUmafPlatform_ pUmafCategory_ pUmafSiteURL_ pUmafURL_ =
    URLcrawlerrorssamplesMarkAsFixed'
    { _umafQuotaUser = Nothing
    , _umafPrettyPrint = True
    , _umafPlatform = pUmafPlatform_
    , _umafUserIP = Nothing
    , _umafCategory = pUmafCategory_
    , _umafSiteURL = pUmafSiteURL_
    , _umafURL = pUmafURL_
    , _umafKey = Nothing
    , _umafOAuthToken = Nothing
    , _umafFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umafQuotaUser :: Lens' URLcrawlerrorssamplesMarkAsFixed' (Maybe Text)
umafQuotaUser
  = lens _umafQuotaUser
      (\ s a -> s{_umafQuotaUser = a})

-- | Returns response with indentations and line breaks.
umafPrettyPrint :: Lens' URLcrawlerrorssamplesMarkAsFixed' Bool
umafPrettyPrint
  = lens _umafPrettyPrint
      (\ s a -> s{_umafPrettyPrint = a})

-- | The user agent type (platform) that made the request. For example: web
umafPlatform :: Lens' URLcrawlerrorssamplesMarkAsFixed' WebmastersURLcrawlerrorssamplesMarkAsFixedPlatform
umafPlatform
  = lens _umafPlatform (\ s a -> s{_umafPlatform = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umafUserIP :: Lens' URLcrawlerrorssamplesMarkAsFixed' (Maybe Text)
umafUserIP
  = lens _umafUserIP (\ s a -> s{_umafUserIP = a})

-- | The crawl error category. For example: authPermissions
umafCategory :: Lens' URLcrawlerrorssamplesMarkAsFixed' WebmastersURLcrawlerrorssamplesMarkAsFixedCategory
umafCategory
  = lens _umafCategory (\ s a -> s{_umafCategory = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
umafSiteURL :: Lens' URLcrawlerrorssamplesMarkAsFixed' Text
umafSiteURL
  = lens _umafSiteURL (\ s a -> s{_umafSiteURL = a})

-- | The relative path (without the site) of the sample URL. It must be one
-- of the URLs returned by list(). For example, for the URL
-- https:\/\/www.example.com\/pagename on the site
-- https:\/\/www.example.com\/, the url value is pagename
umafURL :: Lens' URLcrawlerrorssamplesMarkAsFixed' Text
umafURL = lens _umafURL (\ s a -> s{_umafURL = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umafKey :: Lens' URLcrawlerrorssamplesMarkAsFixed' (Maybe Key)
umafKey = lens _umafKey (\ s a -> s{_umafKey = a})

-- | OAuth 2.0 token for the current user.
umafOAuthToken :: Lens' URLcrawlerrorssamplesMarkAsFixed' (Maybe OAuthToken)
umafOAuthToken
  = lens _umafOAuthToken
      (\ s a -> s{_umafOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
umafFields :: Lens' URLcrawlerrorssamplesMarkAsFixed' (Maybe Text)
umafFields
  = lens _umafFields (\ s a -> s{_umafFields = a})

instance GoogleAuth URLcrawlerrorssamplesMarkAsFixed'
         where
        authKey = umafKey . _Just
        authToken = umafOAuthToken . _Just

instance GoogleRequest
         URLcrawlerrorssamplesMarkAsFixed' where
        type Rs URLcrawlerrorssamplesMarkAsFixed' = ()
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u
          URLcrawlerrorssamplesMarkAsFixed'{..}
          = go _umafQuotaUser (Just _umafPrettyPrint)
              (Just _umafPlatform)
              _umafUserIP
              (Just _umafCategory)
              _umafSiteURL
              _umafURL
              _umafKey
              _umafOAuthToken
              _umafFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy UrlcrawlerrorssamplesMarkAsFixedResource)
                      r
                      u
