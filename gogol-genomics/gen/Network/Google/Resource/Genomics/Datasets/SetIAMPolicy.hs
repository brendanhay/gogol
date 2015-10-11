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
-- Module      : Network.Google.Resource.Genomics.Datasets.SetIAMPolicy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the access control policy on the specified dataset. Replaces any
-- existing policy. See Setting a Policy for more information.
--
-- /See:/ < Genomics API Reference> for @GenomicsDatasetsSetIAMPolicy@.
module Network.Google.Resource.Genomics.Datasets.SetIAMPolicy
    (
    -- * REST Resource
      DatasetsSetIAMPolicyResource

    -- * Creating a Request
    , datasetsSetIAMPolicy'
    , DatasetsSetIAMPolicy'

    -- * Request Lenses
    , dsipXgafv
    , dsipQuotaUser
    , dsipPrettyPrint
    , dsipUploadProtocol
    , dsipPp
    , dsipAccessToken
    , dsipUploadType
    , dsipPayload
    , dsipBearerToken
    , dsipKey
    , dsipResource
    , dsipOAuthToken
    , dsipFields
    , dsipCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsDatasetsSetIAMPolicy@ method which the
-- 'DatasetsSetIAMPolicy'' request conforms to.
type DatasetsSetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
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
                                   ReqBody '[JSON] SetIAMPolicyRequest :>
                                     Post '[JSON] Policy

-- | Sets the access control policy on the specified dataset. Replaces any
-- existing policy. See Setting a Policy for more information.
--
-- /See:/ 'datasetsSetIAMPolicy'' smart constructor.
data DatasetsSetIAMPolicy' = DatasetsSetIAMPolicy'
    { _dsipXgafv          :: !(Maybe Text)
    , _dsipQuotaUser      :: !(Maybe Text)
    , _dsipPrettyPrint    :: !Bool
    , _dsipUploadProtocol :: !(Maybe Text)
    , _dsipPp             :: !Bool
    , _dsipAccessToken    :: !(Maybe Text)
    , _dsipUploadType     :: !(Maybe Text)
    , _dsipPayload        :: !SetIAMPolicyRequest
    , _dsipBearerToken    :: !(Maybe Text)
    , _dsipKey            :: !(Maybe AuthKey)
    , _dsipResource       :: !Text
    , _dsipOAuthToken     :: !(Maybe OAuthToken)
    , _dsipFields         :: !(Maybe Text)
    , _dsipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsSetIAMPolicy'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsipXgafv'
--
-- * 'dsipQuotaUser'
--
-- * 'dsipPrettyPrint'
--
-- * 'dsipUploadProtocol'
--
-- * 'dsipPp'
--
-- * 'dsipAccessToken'
--
-- * 'dsipUploadType'
--
-- * 'dsipPayload'
--
-- * 'dsipBearerToken'
--
-- * 'dsipKey'
--
-- * 'dsipResource'
--
-- * 'dsipOAuthToken'
--
-- * 'dsipFields'
--
-- * 'dsipCallback'
datasetsSetIAMPolicy'
    :: SetIAMPolicyRequest -- ^ 'payload'
    -> Text -- ^ 'resource'
    -> DatasetsSetIAMPolicy'
datasetsSetIAMPolicy' pDsipPayload_ pDsipResource_ =
    DatasetsSetIAMPolicy'
    { _dsipXgafv = Nothing
    , _dsipQuotaUser = Nothing
    , _dsipPrettyPrint = True
    , _dsipUploadProtocol = Nothing
    , _dsipPp = True
    , _dsipAccessToken = Nothing
    , _dsipUploadType = Nothing
    , _dsipPayload = pDsipPayload_
    , _dsipBearerToken = Nothing
    , _dsipKey = Nothing
    , _dsipResource = pDsipResource_
    , _dsipOAuthToken = Nothing
    , _dsipFields = Nothing
    , _dsipCallback = Nothing
    }

-- | V1 error format.
dsipXgafv :: Lens' DatasetsSetIAMPolicy' (Maybe Text)
dsipXgafv
  = lens _dsipXgafv (\ s a -> s{_dsipXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
dsipQuotaUser :: Lens' DatasetsSetIAMPolicy' (Maybe Text)
dsipQuotaUser
  = lens _dsipQuotaUser
      (\ s a -> s{_dsipQuotaUser = a})

-- | Returns response with indentations and line breaks.
dsipPrettyPrint :: Lens' DatasetsSetIAMPolicy' Bool
dsipPrettyPrint
  = lens _dsipPrettyPrint
      (\ s a -> s{_dsipPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dsipUploadProtocol :: Lens' DatasetsSetIAMPolicy' (Maybe Text)
dsipUploadProtocol
  = lens _dsipUploadProtocol
      (\ s a -> s{_dsipUploadProtocol = a})

-- | Pretty-print response.
dsipPp :: Lens' DatasetsSetIAMPolicy' Bool
dsipPp = lens _dsipPp (\ s a -> s{_dsipPp = a})

-- | OAuth access token.
dsipAccessToken :: Lens' DatasetsSetIAMPolicy' (Maybe Text)
dsipAccessToken
  = lens _dsipAccessToken
      (\ s a -> s{_dsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dsipUploadType :: Lens' DatasetsSetIAMPolicy' (Maybe Text)
dsipUploadType
  = lens _dsipUploadType
      (\ s a -> s{_dsipUploadType = a})

-- | Multipart request metadata.
dsipPayload :: Lens' DatasetsSetIAMPolicy' SetIAMPolicyRequest
dsipPayload
  = lens _dsipPayload (\ s a -> s{_dsipPayload = a})

-- | OAuth bearer token.
dsipBearerToken :: Lens' DatasetsSetIAMPolicy' (Maybe Text)
dsipBearerToken
  = lens _dsipBearerToken
      (\ s a -> s{_dsipBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dsipKey :: Lens' DatasetsSetIAMPolicy' (Maybe AuthKey)
dsipKey = lens _dsipKey (\ s a -> s{_dsipKey = a})

-- | REQUIRED: The resource for which policy is being specified. Format is
-- \`datasets\/\`.
dsipResource :: Lens' DatasetsSetIAMPolicy' Text
dsipResource
  = lens _dsipResource (\ s a -> s{_dsipResource = a})

-- | OAuth 2.0 token for the current user.
dsipOAuthToken :: Lens' DatasetsSetIAMPolicy' (Maybe OAuthToken)
dsipOAuthToken
  = lens _dsipOAuthToken
      (\ s a -> s{_dsipOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dsipFields :: Lens' DatasetsSetIAMPolicy' (Maybe Text)
dsipFields
  = lens _dsipFields (\ s a -> s{_dsipFields = a})

-- | JSONP
dsipCallback :: Lens' DatasetsSetIAMPolicy' (Maybe Text)
dsipCallback
  = lens _dsipCallback (\ s a -> s{_dsipCallback = a})

instance GoogleAuth DatasetsSetIAMPolicy' where
        _AuthKey = dsipKey . _Just
        _AuthToken = dsipOAuthToken . _Just

instance GoogleRequest DatasetsSetIAMPolicy' where
        type Rs DatasetsSetIAMPolicy' = Policy
        request = requestWith genomicsRequest
        requestWith rq DatasetsSetIAMPolicy'{..}
          = go _dsipResource _dsipXgafv _dsipUploadProtocol
              (Just _dsipPp)
              _dsipAccessToken
              _dsipUploadType
              _dsipBearerToken
              _dsipCallback
              _dsipQuotaUser
              (Just _dsipPrettyPrint)
              _dsipFields
              _dsipKey
              _dsipOAuthToken
              (Just AltJSON)
              _dsipPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy DatasetsSetIAMPolicyResource)
                      rq
