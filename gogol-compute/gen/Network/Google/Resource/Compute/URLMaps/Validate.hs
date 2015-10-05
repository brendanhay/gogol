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
module Network.Google.Resource.Compute.URLMaps.Validate
    (
    -- * REST Resource
      URLMapsValidateResource

    -- * Creating a Request
    , urlMapsValidate'
    , URLMapsValidate'

    -- * Request Lenses
    , umvQuotaUser
    , umvURLMap
    , umvPrettyPrint
    , umvProject
    , umvUserIP
    , umvPayload
    , umvKey
    , umvOAuthToken
    , umvFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeURLMapsValidate@ which the
-- 'URLMapsValidate'' request conforms to.
type URLMapsValidateResource =
     Capture "project" Text :>
       "global" :>
         "urlMaps" :>
           Capture "urlMap" Text :>
             "validate" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] URLMapsValidateRequest :>
                               Post '[JSON] URLMapsValidateResponse

-- | Run static validation for the UrlMap. In particular, the tests of the
-- provided UrlMap will be run. Calling this method does NOT create the
-- UrlMap.
--
-- /See:/ 'urlMapsValidate'' smart constructor.
data URLMapsValidate' = URLMapsValidate'
    { _umvQuotaUser   :: !(Maybe Text)
    , _umvURLMap      :: !Text
    , _umvPrettyPrint :: !Bool
    , _umvProject     :: !Text
    , _umvUserIP      :: !(Maybe Text)
    , _umvPayload     :: !URLMapsValidateRequest
    , _umvKey         :: !(Maybe AuthKey)
    , _umvOAuthToken  :: !(Maybe OAuthToken)
    , _umvFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsValidate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umvQuotaUser'
--
-- * 'umvURLMap'
--
-- * 'umvPrettyPrint'
--
-- * 'umvProject'
--
-- * 'umvUserIP'
--
-- * 'umvPayload'
--
-- * 'umvKey'
--
-- * 'umvOAuthToken'
--
-- * 'umvFields'
urlMapsValidate'
    :: Text -- ^ 'urlMap'
    -> Text -- ^ 'project'
    -> URLMapsValidateRequest -- ^ 'payload'
    -> URLMapsValidate'
urlMapsValidate' pUmvURLMap_ pUmvProject_ pUmvPayload_ =
    URLMapsValidate'
    { _umvQuotaUser = Nothing
    , _umvURLMap = pUmvURLMap_
    , _umvPrettyPrint = True
    , _umvProject = pUmvProject_
    , _umvUserIP = Nothing
    , _umvPayload = pUmvPayload_
    , _umvKey = Nothing
    , _umvOAuthToken = Nothing
    , _umvFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umvQuotaUser :: Lens' URLMapsValidate' (Maybe Text)
umvQuotaUser
  = lens _umvQuotaUser (\ s a -> s{_umvQuotaUser = a})

-- | Name of the UrlMap resource to be validated as.
umvURLMap :: Lens' URLMapsValidate' Text
umvURLMap
  = lens _umvURLMap (\ s a -> s{_umvURLMap = a})

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
umvUserIP :: Lens' URLMapsValidate' (Maybe Text)
umvUserIP
  = lens _umvUserIP (\ s a -> s{_umvUserIP = a})

-- | Multipart request metadata.
umvPayload :: Lens' URLMapsValidate' URLMapsValidateRequest
umvPayload
  = lens _umvPayload (\ s a -> s{_umvPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umvKey :: Lens' URLMapsValidate' (Maybe AuthKey)
umvKey = lens _umvKey (\ s a -> s{_umvKey = a})

-- | OAuth 2.0 token for the current user.
umvOAuthToken :: Lens' URLMapsValidate' (Maybe OAuthToken)
umvOAuthToken
  = lens _umvOAuthToken
      (\ s a -> s{_umvOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
umvFields :: Lens' URLMapsValidate' (Maybe Text)
umvFields
  = lens _umvFields (\ s a -> s{_umvFields = a})

instance GoogleAuth URLMapsValidate' where
        authKey = umvKey . _Just
        authToken = umvOAuthToken . _Just

instance GoogleRequest URLMapsValidate' where
        type Rs URLMapsValidate' = URLMapsValidateResponse
        request = requestWithRoute defReq computeURL
        requestWithRoute r u URLMapsValidate'{..}
          = go _umvProject _umvURLMap _umvQuotaUser
              (Just _umvPrettyPrint)
              _umvUserIP
              _umvFields
              _umvKey
              _umvOAuthToken
              (Just AltJSON)
              _umvPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy URLMapsValidateResource)
                      r
                      u
