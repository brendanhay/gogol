{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Webmasters.URLcrawlerrorssamples.MarkAsFixed
    (
    -- * REST Resource
      UrlcrawlerrorssamplesMarkAsFixedAPI

    -- * Creating a Request
    , uRLcrawlerrorssamplesMarkAsFixed
    , URLcrawlerrorssamplesMarkAsFixed

    -- * Request Lenses
    , umafQuotaUser
    , umafPrettyPrint
    , umafPlatform
    , umafUserIp
    , umafCategory
    , umafSiteUrl
    , umafUrl
    , umafKey
    , umafOauthToken
    , umafFields
    , umafAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersURLcrawlerrorssamplesMarkAsFixed@ which the
-- 'URLcrawlerrorssamplesMarkAsFixed' request conforms to.
type UrlcrawlerrorssamplesMarkAsFixedAPI =
     "sites" :>
       Capture "siteUrl" Text :>
         "urlCrawlErrorsSamples" :>
           Capture "url" Text :>
             QueryParam "platform" Text :>
               QueryParam "category" Text :> Delete '[JSON] ()

-- | Marks the provided site\'s sample URL as fixed, and removes it from the
-- samples list.
--
-- /See:/ 'uRLcrawlerrorssamplesMarkAsFixed' smart constructor.
data URLcrawlerrorssamplesMarkAsFixed = URLcrawlerrorssamplesMarkAsFixed
    { _umafQuotaUser   :: !(Maybe Text)
    , _umafPrettyPrint :: !Bool
    , _umafPlatform    :: !Text
    , _umafUserIp      :: !(Maybe Text)
    , _umafCategory    :: !Text
    , _umafSiteUrl     :: !Text
    , _umafUrl         :: !Text
    , _umafKey         :: !(Maybe Text)
    , _umafOauthToken  :: !(Maybe Text)
    , _umafFields      :: !(Maybe Text)
    , _umafAlt         :: !Text
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
-- * 'umafUserIp'
--
-- * 'umafCategory'
--
-- * 'umafSiteUrl'
--
-- * 'umafUrl'
--
-- * 'umafKey'
--
-- * 'umafOauthToken'
--
-- * 'umafFields'
--
-- * 'umafAlt'
uRLcrawlerrorssamplesMarkAsFixed
    :: Text -- ^ 'platform'
    -> Text -- ^ 'category'
    -> Text -- ^ 'siteUrl'
    -> Text -- ^ 'url'
    -> URLcrawlerrorssamplesMarkAsFixed
uRLcrawlerrorssamplesMarkAsFixed pUmafPlatform_ pUmafCategory_ pUmafSiteUrl_ pUmafUrl_ =
    URLcrawlerrorssamplesMarkAsFixed
    { _umafQuotaUser = Nothing
    , _umafPrettyPrint = True
    , _umafPlatform = pUmafPlatform_
    , _umafUserIp = Nothing
    , _umafCategory = pUmafCategory_
    , _umafSiteUrl = pUmafSiteUrl_
    , _umafUrl = pUmafUrl_
    , _umafKey = Nothing
    , _umafOauthToken = Nothing
    , _umafFields = Nothing
    , _umafAlt = "json"
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
umafPlatform :: Lens' URLcrawlerrorssamplesMarkAsFixed' Text
umafPlatform
  = lens _umafPlatform (\ s a -> s{_umafPlatform = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umafUserIp :: Lens' URLcrawlerrorssamplesMarkAsFixed' (Maybe Text)
umafUserIp
  = lens _umafUserIp (\ s a -> s{_umafUserIp = a})

-- | The crawl error category. For example: authPermissions
umafCategory :: Lens' URLcrawlerrorssamplesMarkAsFixed' Text
umafCategory
  = lens _umafCategory (\ s a -> s{_umafCategory = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
umafSiteUrl :: Lens' URLcrawlerrorssamplesMarkAsFixed' Text
umafSiteUrl
  = lens _umafSiteUrl (\ s a -> s{_umafSiteUrl = a})

-- | The relative path (without the site) of the sample URL. It must be one
-- of the URLs returned by list(). For example, for the URL
-- https:\/\/www.example.com\/pagename on the site
-- https:\/\/www.example.com\/, the url value is pagename
umafUrl :: Lens' URLcrawlerrorssamplesMarkAsFixed' Text
umafUrl = lens _umafUrl (\ s a -> s{_umafUrl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umafKey :: Lens' URLcrawlerrorssamplesMarkAsFixed' (Maybe Text)
umafKey = lens _umafKey (\ s a -> s{_umafKey = a})

-- | OAuth 2.0 token for the current user.
umafOauthToken :: Lens' URLcrawlerrorssamplesMarkAsFixed' (Maybe Text)
umafOauthToken
  = lens _umafOauthToken
      (\ s a -> s{_umafOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
umafFields :: Lens' URLcrawlerrorssamplesMarkAsFixed' (Maybe Text)
umafFields
  = lens _umafFields (\ s a -> s{_umafFields = a})

-- | Data format for the response.
umafAlt :: Lens' URLcrawlerrorssamplesMarkAsFixed' Text
umafAlt = lens _umafAlt (\ s a -> s{_umafAlt = a})

instance GoogleRequest
         URLcrawlerrorssamplesMarkAsFixed' where
        type Rs URLcrawlerrorssamplesMarkAsFixed' = ()
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u
          URLcrawlerrorssamplesMarkAsFixed{..}
          = go _umafQuotaUser _umafPrettyPrint
              (Just _umafPlatform)
              _umafUserIp
              (Just _umafCategory)
              _umafSiteUrl
              _umafUrl
              _umafKey
              _umafOauthToken
              _umafFields
              _umafAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UrlcrawlerrorssamplesMarkAsFixedAPI)
                      r
                      u
