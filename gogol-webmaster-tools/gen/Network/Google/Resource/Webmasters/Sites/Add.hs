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
-- Module      : Network.Google.Resource.Webmasters.Sites.Add
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a site to the set of the user\'s sites in Webmaster Tools.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersSitesAdd@.
module Network.Google.Resource.Webmasters.Sites.Add
    (
    -- * REST Resource
      SitesAddResource

    -- * Creating a Request
    , sitesAdd'
    , SitesAdd'

    -- * Request Lenses
    , saQuotaUser
    , saPrettyPrint
    , saUserIp
    , saSiteUrl
    , saKey
    , saOauthToken
    , saFields
    , saAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitesAdd@ which the
-- 'SitesAdd'' request conforms to.
type SitesAddResource =
     "sites" :>
       Capture "siteUrl" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Put '[JSON] ()

-- | Adds a site to the set of the user\'s sites in Webmaster Tools.
--
-- /See:/ 'sitesAdd'' smart constructor.
data SitesAdd' = SitesAdd'
    { _saQuotaUser   :: !(Maybe Text)
    , _saPrettyPrint :: !Bool
    , _saUserIp      :: !(Maybe Text)
    , _saSiteUrl     :: !Text
    , _saKey         :: !(Maybe Text)
    , _saOauthToken  :: !(Maybe Text)
    , _saFields      :: !(Maybe Text)
    , _saAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesAdd'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saQuotaUser'
--
-- * 'saPrettyPrint'
--
-- * 'saUserIp'
--
-- * 'saSiteUrl'
--
-- * 'saKey'
--
-- * 'saOauthToken'
--
-- * 'saFields'
--
-- * 'saAlt'
sitesAdd'
    :: Text -- ^ 'siteUrl'
    -> SitesAdd'
sitesAdd' pSaSiteUrl_ =
    SitesAdd'
    { _saQuotaUser = Nothing
    , _saPrettyPrint = True
    , _saUserIp = Nothing
    , _saSiteUrl = pSaSiteUrl_
    , _saKey = Nothing
    , _saOauthToken = Nothing
    , _saFields = Nothing
    , _saAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
saQuotaUser :: Lens' SitesAdd' (Maybe Text)
saQuotaUser
  = lens _saQuotaUser (\ s a -> s{_saQuotaUser = a})

-- | Returns response with indentations and line breaks.
saPrettyPrint :: Lens' SitesAdd' Bool
saPrettyPrint
  = lens _saPrettyPrint
      (\ s a -> s{_saPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
saUserIp :: Lens' SitesAdd' (Maybe Text)
saUserIp = lens _saUserIp (\ s a -> s{_saUserIp = a})

-- | The URL of the site to add.
saSiteUrl :: Lens' SitesAdd' Text
saSiteUrl
  = lens _saSiteUrl (\ s a -> s{_saSiteUrl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
saKey :: Lens' SitesAdd' (Maybe Text)
saKey = lens _saKey (\ s a -> s{_saKey = a})

-- | OAuth 2.0 token for the current user.
saOauthToken :: Lens' SitesAdd' (Maybe Text)
saOauthToken
  = lens _saOauthToken (\ s a -> s{_saOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
saFields :: Lens' SitesAdd' (Maybe Text)
saFields = lens _saFields (\ s a -> s{_saFields = a})

-- | Data format for the response.
saAlt :: Lens' SitesAdd' Alt
saAlt = lens _saAlt (\ s a -> s{_saAlt = a})

instance GoogleRequest SitesAdd' where
        type Rs SitesAdd' = ()
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u SitesAdd'{..}
          = go _saQuotaUser (Just _saPrettyPrint) _saUserIp
              _saSiteUrl
              _saKey
              _saOauthToken
              _saFields
              (Just _saAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SitesAddResource) r
                      u
