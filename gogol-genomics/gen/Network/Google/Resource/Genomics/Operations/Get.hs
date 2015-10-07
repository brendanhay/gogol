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
-- Module      : Network.Google.Resource.Genomics.Operations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ < Genomics API Reference> for @GenomicsOperationsGet@.
module Network.Google.Resource.Genomics.Operations.Get
    (
    -- * REST Resource
      OperationsGetResource

    -- * Creating a Request
    , operationsGet'
    , OperationsGet'

    -- * Request Lenses
    , ogXgafv
    , ogQuotaUser
    , ogPrettyPrint
    , ogUploadProtocol
    , ogPp
    , ogAccessToken
    , ogUploadType
    , ogBearerToken
    , ogKey
    , ogName
    , ogOAuthToken
    , ogFields
    , ogCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsOperationsGet@ method which the
-- 'OperationsGet'' request conforms to.
type OperationsGetResource =
     "v1" :>
       Capture "name" Text :>
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
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] Operation

-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ 'operationsGet'' smart constructor.
data OperationsGet' = OperationsGet'
    { _ogXgafv          :: !(Maybe Text)
    , _ogQuotaUser      :: !(Maybe Text)
    , _ogPrettyPrint    :: !Bool
    , _ogUploadProtocol :: !(Maybe Text)
    , _ogPp             :: !Bool
    , _ogAccessToken    :: !(Maybe Text)
    , _ogUploadType     :: !(Maybe Text)
    , _ogBearerToken    :: !(Maybe Text)
    , _ogKey            :: !(Maybe AuthKey)
    , _ogName           :: !Text
    , _ogOAuthToken     :: !(Maybe OAuthToken)
    , _ogFields         :: !(Maybe Text)
    , _ogCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogXgafv'
--
-- * 'ogQuotaUser'
--
-- * 'ogPrettyPrint'
--
-- * 'ogUploadProtocol'
--
-- * 'ogPp'
--
-- * 'ogAccessToken'
--
-- * 'ogUploadType'
--
-- * 'ogBearerToken'
--
-- * 'ogKey'
--
-- * 'ogName'
--
-- * 'ogOAuthToken'
--
-- * 'ogFields'
--
-- * 'ogCallback'
operationsGet'
    :: Text -- ^ 'name'
    -> OperationsGet'
operationsGet' pOgName_ =
    OperationsGet'
    { _ogXgafv = Nothing
    , _ogQuotaUser = Nothing
    , _ogPrettyPrint = True
    , _ogUploadProtocol = Nothing
    , _ogPp = True
    , _ogAccessToken = Nothing
    , _ogUploadType = Nothing
    , _ogBearerToken = Nothing
    , _ogKey = Nothing
    , _ogName = pOgName_
    , _ogOAuthToken = Nothing
    , _ogFields = Nothing
    , _ogCallback = Nothing
    }

-- | V1 error format.
ogXgafv :: Lens' OperationsGet' (Maybe Text)
ogXgafv = lens _ogXgafv (\ s a -> s{_ogXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ogQuotaUser :: Lens' OperationsGet' (Maybe Text)
ogQuotaUser
  = lens _ogQuotaUser (\ s a -> s{_ogQuotaUser = a})

-- | Returns response with indentations and line breaks.
ogPrettyPrint :: Lens' OperationsGet' Bool
ogPrettyPrint
  = lens _ogPrettyPrint
      (\ s a -> s{_ogPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ogUploadProtocol :: Lens' OperationsGet' (Maybe Text)
ogUploadProtocol
  = lens _ogUploadProtocol
      (\ s a -> s{_ogUploadProtocol = a})

-- | Pretty-print response.
ogPp :: Lens' OperationsGet' Bool
ogPp = lens _ogPp (\ s a -> s{_ogPp = a})

-- | OAuth access token.
ogAccessToken :: Lens' OperationsGet' (Maybe Text)
ogAccessToken
  = lens _ogAccessToken
      (\ s a -> s{_ogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ogUploadType :: Lens' OperationsGet' (Maybe Text)
ogUploadType
  = lens _ogUploadType (\ s a -> s{_ogUploadType = a})

-- | OAuth bearer token.
ogBearerToken :: Lens' OperationsGet' (Maybe Text)
ogBearerToken
  = lens _ogBearerToken
      (\ s a -> s{_ogBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ogKey :: Lens' OperationsGet' (Maybe AuthKey)
ogKey = lens _ogKey (\ s a -> s{_ogKey = a})

-- | The name of the operation resource.
ogName :: Lens' OperationsGet' Text
ogName = lens _ogName (\ s a -> s{_ogName = a})

-- | OAuth 2.0 token for the current user.
ogOAuthToken :: Lens' OperationsGet' (Maybe OAuthToken)
ogOAuthToken
  = lens _ogOAuthToken (\ s a -> s{_ogOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ogFields :: Lens' OperationsGet' (Maybe Text)
ogFields = lens _ogFields (\ s a -> s{_ogFields = a})

-- | JSONP
ogCallback :: Lens' OperationsGet' (Maybe Text)
ogCallback
  = lens _ogCallback (\ s a -> s{_ogCallback = a})

instance GoogleAuth OperationsGet' where
        _AuthKey = ogKey . _Just
        _AuthToken = ogOAuthToken . _Just

instance GoogleRequest OperationsGet' where
        type Rs OperationsGet' = Operation
        request = requestWith genomicsRequest
        requestWith rq OperationsGet'{..}
          = go _ogName _ogXgafv _ogUploadProtocol (Just _ogPp)
              _ogAccessToken
              _ogUploadType
              _ogBearerToken
              _ogCallback
              _ogQuotaUser
              (Just _ogPrettyPrint)
              _ogFields
              _ogKey
              _ogOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy OperationsGetResource)
                      rq
