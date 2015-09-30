{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.URLMaps.Validate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Run static validation for the UrlMap. In particular, the tests of the
-- provided UrlMap will be run. Calling this method does NOT create the
-- UrlMap.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeURLMapsValidate@.
module Compute.URLMaps.Validate
    (
    -- * REST Resource
      UrlMapsValidateAPI

    -- * Creating a Request
    , uRLMapsValidate
    , URLMapsValidate

    -- * Request Lenses
    , umvQuotaUser
    , umvUrlMap
    , umvPrettyPrint
    , umvProject
    , umvUserIp
    , umvKey
    , umvOauthToken
    , umvFields
    , umvAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeURLMapsValidate@ which the
-- 'URLMapsValidate' request conforms to.
type UrlMapsValidateAPI =
     Capture "project" Text :>
       "global" :>
         "urlMaps" :>
           Capture "urlMap" Text :>
             "validate" :> Post '[JSON] URLMapsValidateResponse

-- | Run static validation for the UrlMap. In particular, the tests of the
-- provided UrlMap will be run. Calling this method does NOT create the
-- UrlMap.
--
-- /See:/ 'uRLMapsValidate' smart constructor.
data URLMapsValidate = URLMapsValidate
    { _umvQuotaUser   :: !(Maybe Text)
    , _umvUrlMap      :: !Text
    , _umvPrettyPrint :: !Bool
    , _umvProject     :: !Text
    , _umvUserIp      :: !(Maybe Text)
    , _umvKey         :: !(Maybe Text)
    , _umvOauthToken  :: !(Maybe Text)
    , _umvFields      :: !(Maybe Text)
    , _umvAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsValidate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umvQuotaUser'
--
-- * 'umvUrlMap'
--
-- * 'umvPrettyPrint'
--
-- * 'umvProject'
--
-- * 'umvUserIp'
--
-- * 'umvKey'
--
-- * 'umvOauthToken'
--
-- * 'umvFields'
--
-- * 'umvAlt'
uRLMapsValidate
    :: Text -- ^ 'urlMap'
    -> Text -- ^ 'project'
    -> URLMapsValidate
uRLMapsValidate pUmvUrlMap_ pUmvProject_ =
    URLMapsValidate
    { _umvQuotaUser = Nothing
    , _umvUrlMap = pUmvUrlMap_
    , _umvPrettyPrint = True
    , _umvProject = pUmvProject_
    , _umvUserIp = Nothing
    , _umvKey = Nothing
    , _umvOauthToken = Nothing
    , _umvFields = Nothing
    , _umvAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umvQuotaUser :: Lens' URLMapsValidate' (Maybe Text)
umvQuotaUser
  = lens _umvQuotaUser (\ s a -> s{_umvQuotaUser = a})

-- | Name of the UrlMap resource to be validated as.
umvUrlMap :: Lens' URLMapsValidate' Text
umvUrlMap
  = lens _umvUrlMap (\ s a -> s{_umvUrlMap = a})

-- | Returns response with indentations and line breaks.
umvPrettyPrint :: Lens' URLMapsValidate' Bool
umvPrettyPrint
  = lens _umvPrettyPrint
      (\ s a -> s{_umvPrettyPrint = a})

-- | Name of the project scoping this request.
umvProject :: Lens' URLMapsValidate' Text
umvProject
  = lens _umvProject (\ s a -> s{_umvProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umvUserIp :: Lens' URLMapsValidate' (Maybe Text)
umvUserIp
  = lens _umvUserIp (\ s a -> s{_umvUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umvKey :: Lens' URLMapsValidate' (Maybe Text)
umvKey = lens _umvKey (\ s a -> s{_umvKey = a})

-- | OAuth 2.0 token for the current user.
umvOauthToken :: Lens' URLMapsValidate' (Maybe Text)
umvOauthToken
  = lens _umvOauthToken
      (\ s a -> s{_umvOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
umvFields :: Lens' URLMapsValidate' (Maybe Text)
umvFields
  = lens _umvFields (\ s a -> s{_umvFields = a})

-- | Data format for the response.
umvAlt :: Lens' URLMapsValidate' Text
umvAlt = lens _umvAlt (\ s a -> s{_umvAlt = a})

instance GoogleRequest URLMapsValidate' where
        type Rs URLMapsValidate' = URLMapsValidateResponse
        request = requestWithRoute defReq computeURL
        requestWithRoute r u URLMapsValidate{..}
          = go _umvQuotaUser _umvUrlMap _umvPrettyPrint
              _umvProject
              _umvUserIp
              _umvKey
              _umvOauthToken
              _umvFields
              _umvAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UrlMapsValidateAPI)
                      r
                      u
