{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Discovery.APIs.GetRest
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve the description of a particular version of an api.
--
-- /See:/ <https://developers.google.com/discovery/ APIs Discovery Service Reference> for @DiscoveryAPIsGetRest@.
module Discovery.APIs.GetRest
    (
    -- * REST Resource
      ApisGetRestAPI

    -- * Creating a Request
    , aPIsGetRest
    , APIsGetRest

    -- * Request Lenses
    , agrQuotaUser
    , agrPrettyPrint
    , agrUserIp
    , agrKey
    , agrVersion
    , agrApi
    , agrOauthToken
    , agrFields
    , agrAlt
    ) where

import           Network.Google.Discovery.Types
import           Network.Google.Prelude

-- | A resource alias for @DiscoveryAPIsGetRest@ which the
-- 'APIsGetRest' request conforms to.
type ApisGetRestAPI =
     "apis" :>
       Capture "api" Text :>
         Capture "version" Text :>
           "rest" :> Get '[JSON] RestDescription

-- | Retrieve the description of a particular version of an api.
--
-- /See:/ 'aPIsGetRest' smart constructor.
data APIsGetRest = APIsGetRest
    { _agrQuotaUser   :: !(Maybe Text)
    , _agrPrettyPrint :: !Bool
    , _agrUserIp      :: !(Maybe Text)
    , _agrKey         :: !(Maybe Text)
    , _agrVersion     :: !Text
    , _agrApi         :: !Text
    , _agrOauthToken  :: !(Maybe Text)
    , _agrFields      :: !(Maybe Text)
    , _agrAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'APIsGetRest'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agrQuotaUser'
--
-- * 'agrPrettyPrint'
--
-- * 'agrUserIp'
--
-- * 'agrKey'
--
-- * 'agrVersion'
--
-- * 'agrApi'
--
-- * 'agrOauthToken'
--
-- * 'agrFields'
--
-- * 'agrAlt'
aPIsGetRest
    :: Text -- ^ 'version'
    -> Text -- ^ 'api'
    -> APIsGetRest
aPIsGetRest pAgrVersion_ pAgrApi_ =
    APIsGetRest
    { _agrQuotaUser = Nothing
    , _agrPrettyPrint = True
    , _agrUserIp = Nothing
    , _agrKey = Nothing
    , _agrVersion = pAgrVersion_
    , _agrApi = pAgrApi_
    , _agrOauthToken = Nothing
    , _agrFields = Nothing
    , _agrAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agrQuotaUser :: Lens' APIsGetRest' (Maybe Text)
agrQuotaUser
  = lens _agrQuotaUser (\ s a -> s{_agrQuotaUser = a})

-- | Returns response with indentations and line breaks.
agrPrettyPrint :: Lens' APIsGetRest' Bool
agrPrettyPrint
  = lens _agrPrettyPrint
      (\ s a -> s{_agrPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agrUserIp :: Lens' APIsGetRest' (Maybe Text)
agrUserIp
  = lens _agrUserIp (\ s a -> s{_agrUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agrKey :: Lens' APIsGetRest' (Maybe Text)
agrKey = lens _agrKey (\ s a -> s{_agrKey = a})

-- | The version of the API.
agrVersion :: Lens' APIsGetRest' Text
agrVersion
  = lens _agrVersion (\ s a -> s{_agrVersion = a})

-- | The name of the API.
agrApi :: Lens' APIsGetRest' Text
agrApi = lens _agrApi (\ s a -> s{_agrApi = a})

-- | OAuth 2.0 token for the current user.
agrOauthToken :: Lens' APIsGetRest' (Maybe Text)
agrOauthToken
  = lens _agrOauthToken
      (\ s a -> s{_agrOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
agrFields :: Lens' APIsGetRest' (Maybe Text)
agrFields
  = lens _agrFields (\ s a -> s{_agrFields = a})

-- | Data format for the response.
agrAlt :: Lens' APIsGetRest' Text
agrAlt = lens _agrAlt (\ s a -> s{_agrAlt = a})

instance GoogleRequest APIsGetRest' where
        type Rs APIsGetRest' = RestDescription
        request = requestWithRoute defReq discoveryURL
        requestWithRoute r u APIsGetRest{..}
          = go _agrQuotaUser _agrPrettyPrint _agrUserIp _agrKey
              _agrVersion
              _agrApi
              _agrOauthToken
              _agrFields
              _agrAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ApisGetRestAPI) r u
