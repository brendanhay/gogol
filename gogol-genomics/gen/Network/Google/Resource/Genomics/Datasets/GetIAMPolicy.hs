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
-- Module      : Network.Google.Resource.Genomics.Datasets.GetIAMPolicy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the access control policy for the dataset. Is empty if the policy
-- or the resource does not exist. See Getting a Policy for more
-- information.
--
-- /See:/ < Genomics API Reference> for @GenomicsDatasetsGetIAMPolicy@.
module Network.Google.Resource.Genomics.Datasets.GetIAMPolicy
    (
    -- * REST Resource
      DatasetsGetIAMPolicyResource

    -- * Creating a Request
    , datasetsGetIAMPolicy'
    , DatasetsGetIAMPolicy'

    -- * Request Lenses
    , dgipXgafv
    , dgipQuotaUser
    , dgipPrettyPrint
    , dgipUploadProtocol
    , dgipPp
    , dgipAccessToken
    , dgipUploadType
    , dgipPayload
    , dgipBearerToken
    , dgipKey
    , dgipResource
    , dgipOAuthToken
    , dgipFields
    , dgipCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsGetIAMPolicy@ method which the
-- 'DatasetsGetIAMPolicy'' request conforms to.
type DatasetsGetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               Header "Authorization" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] GetIAMPolicyRequest :>
                                     Post '[JSON] Policy

-- | Gets the access control policy for the dataset. Is empty if the policy
-- or the resource does not exist. See Getting a Policy for more
-- information.
--
-- /See:/ 'datasetsGetIAMPolicy'' smart constructor.
data DatasetsGetIAMPolicy' = DatasetsGetIAMPolicy'
    { _dgipXgafv          :: !(Maybe Text)
    , _dgipQuotaUser      :: !(Maybe Text)
    , _dgipPrettyPrint    :: !Bool
    , _dgipUploadProtocol :: !(Maybe Text)
    , _dgipPp             :: !Bool
    , _dgipAccessToken    :: !(Maybe Text)
    , _dgipUploadType     :: !(Maybe Text)
    , _dgipPayload        :: !GetIAMPolicyRequest
    , _dgipBearerToken    :: !(Maybe Text)
    , _dgipKey            :: !(Maybe AuthKey)
    , _dgipResource       :: !Text
    , _dgipOAuthToken     :: !(Maybe OAuthToken)
    , _dgipFields         :: !(Maybe Text)
    , _dgipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsGetIAMPolicy'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgipXgafv'
--
-- * 'dgipQuotaUser'
--
-- * 'dgipPrettyPrint'
--
-- * 'dgipUploadProtocol'
--
-- * 'dgipPp'
--
-- * 'dgipAccessToken'
--
-- * 'dgipUploadType'
--
-- * 'dgipPayload'
--
-- * 'dgipBearerToken'
--
-- * 'dgipKey'
--
-- * 'dgipResource'
--
-- * 'dgipOAuthToken'
--
-- * 'dgipFields'
--
-- * 'dgipCallback'
datasetsGetIAMPolicy'
    :: GetIAMPolicyRequest -- ^ 'payload'
    -> Text -- ^ 'resource'
    -> DatasetsGetIAMPolicy'
datasetsGetIAMPolicy' pDgipPayload_ pDgipResource_ =
    DatasetsGetIAMPolicy'
    { _dgipXgafv = Nothing
    , _dgipQuotaUser = Nothing
    , _dgipPrettyPrint = True
    , _dgipUploadProtocol = Nothing
    , _dgipPp = True
    , _dgipAccessToken = Nothing
    , _dgipUploadType = Nothing
    , _dgipPayload = pDgipPayload_
    , _dgipBearerToken = Nothing
    , _dgipKey = Nothing
    , _dgipResource = pDgipResource_
    , _dgipOAuthToken = Nothing
    , _dgipFields = Nothing
    , _dgipCallback = Nothing
    }

-- | V1 error format.
dgipXgafv :: Lens' DatasetsGetIAMPolicy' (Maybe Text)
dgipXgafv
  = lens _dgipXgafv (\ s a -> s{_dgipXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
dgipQuotaUser :: Lens' DatasetsGetIAMPolicy' (Maybe Text)
dgipQuotaUser
  = lens _dgipQuotaUser
      (\ s a -> s{_dgipQuotaUser = a})

-- | Returns response with indentations and line breaks.
dgipPrettyPrint :: Lens' DatasetsGetIAMPolicy' Bool
dgipPrettyPrint
  = lens _dgipPrettyPrint
      (\ s a -> s{_dgipPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dgipUploadProtocol :: Lens' DatasetsGetIAMPolicy' (Maybe Text)
dgipUploadProtocol
  = lens _dgipUploadProtocol
      (\ s a -> s{_dgipUploadProtocol = a})

-- | Pretty-print response.
dgipPp :: Lens' DatasetsGetIAMPolicy' Bool
dgipPp = lens _dgipPp (\ s a -> s{_dgipPp = a})

-- | OAuth access token.
dgipAccessToken :: Lens' DatasetsGetIAMPolicy' (Maybe Text)
dgipAccessToken
  = lens _dgipAccessToken
      (\ s a -> s{_dgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dgipUploadType :: Lens' DatasetsGetIAMPolicy' (Maybe Text)
dgipUploadType
  = lens _dgipUploadType
      (\ s a -> s{_dgipUploadType = a})

-- | Multipart request metadata.
dgipPayload :: Lens' DatasetsGetIAMPolicy' GetIAMPolicyRequest
dgipPayload
  = lens _dgipPayload (\ s a -> s{_dgipPayload = a})

-- | OAuth bearer token.
dgipBearerToken :: Lens' DatasetsGetIAMPolicy' (Maybe Text)
dgipBearerToken
  = lens _dgipBearerToken
      (\ s a -> s{_dgipBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dgipKey :: Lens' DatasetsGetIAMPolicy' (Maybe AuthKey)
dgipKey = lens _dgipKey (\ s a -> s{_dgipKey = a})

-- | REQUIRED: The resource for which policy is being specified. Format is
-- \`datasets\/\`.
dgipResource :: Lens' DatasetsGetIAMPolicy' Text
dgipResource
  = lens _dgipResource (\ s a -> s{_dgipResource = a})

-- | OAuth 2.0 token for the current user.
dgipOAuthToken :: Lens' DatasetsGetIAMPolicy' (Maybe OAuthToken)
dgipOAuthToken
  = lens _dgipOAuthToken
      (\ s a -> s{_dgipOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dgipFields :: Lens' DatasetsGetIAMPolicy' (Maybe Text)
dgipFields
  = lens _dgipFields (\ s a -> s{_dgipFields = a})

-- | JSONP
dgipCallback :: Lens' DatasetsGetIAMPolicy' (Maybe Text)
dgipCallback
  = lens _dgipCallback (\ s a -> s{_dgipCallback = a})

instance GoogleAuth DatasetsGetIAMPolicy' where
        _AuthKey = dgipKey . _Just
        _AuthToken = dgipOAuthToken . _Just

instance GoogleRequest DatasetsGetIAMPolicy' where
        type Rs DatasetsGetIAMPolicy' = Policy
        request = requestWith genomicsRequest
        requestWith rq DatasetsGetIAMPolicy'{..}
          = go _dgipResource _dgipXgafv _dgipUploadProtocol
              (Just _dgipPp)
              _dgipAccessToken
              _dgipUploadType
              _dgipBearerToken
              _dgipCallback
              _dgipQuotaUser
              (Just _dgipPrettyPrint)
              _dgipFields
              _dgipKey
              _dgipOAuthToken
              (Just AltJSON)
              _dgipPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy DatasetsGetIAMPolicyResource)
                      rq
