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
-- Module      : Network.Google.Resource.Genomics.Operations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | This method is not implemented. To cancel an operation, please use
-- Operations.CancelOperation.
--
-- /See:/ < Genomics API Reference> for @GenomicsOperationsDelete@.
module Network.Google.Resource.Genomics.Operations.Delete
    (
    -- * REST Resource
      OperationsDeleteResource

    -- * Creating a Request
    , operationsDelete'
    , OperationsDelete'

    -- * Request Lenses
    , odXgafv
    , odQuotaUser
    , odPrettyPrint
    , odUploadProtocol
    , odPp
    , odAccessToken
    , odUploadType
    , odBearerToken
    , odKey
    , odName
    , odOAuthToken
    , odFields
    , odCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsOperationsDelete@ method which the
-- 'OperationsDelete'' request conforms to.
type OperationsDeleteResource =
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
                               Header "Authorization" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Delete '[JSON] Empty

-- | This method is not implemented. To cancel an operation, please use
-- Operations.CancelOperation.
--
-- /See:/ 'operationsDelete'' smart constructor.
data OperationsDelete' = OperationsDelete'
    { _odXgafv          :: !(Maybe Text)
    , _odQuotaUser      :: !(Maybe Text)
    , _odPrettyPrint    :: !Bool
    , _odUploadProtocol :: !(Maybe Text)
    , _odPp             :: !Bool
    , _odAccessToken    :: !(Maybe Text)
    , _odUploadType     :: !(Maybe Text)
    , _odBearerToken    :: !(Maybe Text)
    , _odKey            :: !(Maybe AuthKey)
    , _odName           :: !Text
    , _odOAuthToken     :: !(Maybe OAuthToken)
    , _odFields         :: !(Maybe Text)
    , _odCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odXgafv'
--
-- * 'odQuotaUser'
--
-- * 'odPrettyPrint'
--
-- * 'odUploadProtocol'
--
-- * 'odPp'
--
-- * 'odAccessToken'
--
-- * 'odUploadType'
--
-- * 'odBearerToken'
--
-- * 'odKey'
--
-- * 'odName'
--
-- * 'odOAuthToken'
--
-- * 'odFields'
--
-- * 'odCallback'
operationsDelete'
    :: Text -- ^ 'name'
    -> OperationsDelete'
operationsDelete' pOdName_ =
    OperationsDelete'
    { _odXgafv = Nothing
    , _odQuotaUser = Nothing
    , _odPrettyPrint = True
    , _odUploadProtocol = Nothing
    , _odPp = True
    , _odAccessToken = Nothing
    , _odUploadType = Nothing
    , _odBearerToken = Nothing
    , _odKey = Nothing
    , _odName = pOdName_
    , _odOAuthToken = Nothing
    , _odFields = Nothing
    , _odCallback = Nothing
    }

-- | V1 error format.
odXgafv :: Lens' OperationsDelete' (Maybe Text)
odXgafv = lens _odXgafv (\ s a -> s{_odXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
odQuotaUser :: Lens' OperationsDelete' (Maybe Text)
odQuotaUser
  = lens _odQuotaUser (\ s a -> s{_odQuotaUser = a})

-- | Returns response with indentations and line breaks.
odPrettyPrint :: Lens' OperationsDelete' Bool
odPrettyPrint
  = lens _odPrettyPrint
      (\ s a -> s{_odPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
odUploadProtocol :: Lens' OperationsDelete' (Maybe Text)
odUploadProtocol
  = lens _odUploadProtocol
      (\ s a -> s{_odUploadProtocol = a})

-- | Pretty-print response.
odPp :: Lens' OperationsDelete' Bool
odPp = lens _odPp (\ s a -> s{_odPp = a})

-- | OAuth access token.
odAccessToken :: Lens' OperationsDelete' (Maybe Text)
odAccessToken
  = lens _odAccessToken
      (\ s a -> s{_odAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
odUploadType :: Lens' OperationsDelete' (Maybe Text)
odUploadType
  = lens _odUploadType (\ s a -> s{_odUploadType = a})

-- | OAuth bearer token.
odBearerToken :: Lens' OperationsDelete' (Maybe Text)
odBearerToken
  = lens _odBearerToken
      (\ s a -> s{_odBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
odKey :: Lens' OperationsDelete' (Maybe AuthKey)
odKey = lens _odKey (\ s a -> s{_odKey = a})

-- | The name of the operation resource to be deleted.
odName :: Lens' OperationsDelete' Text
odName = lens _odName (\ s a -> s{_odName = a})

-- | OAuth 2.0 token for the current user.
odOAuthToken :: Lens' OperationsDelete' (Maybe OAuthToken)
odOAuthToken
  = lens _odOAuthToken (\ s a -> s{_odOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
odFields :: Lens' OperationsDelete' (Maybe Text)
odFields = lens _odFields (\ s a -> s{_odFields = a})

-- | JSONP
odCallback :: Lens' OperationsDelete' (Maybe Text)
odCallback
  = lens _odCallback (\ s a -> s{_odCallback = a})

instance GoogleAuth OperationsDelete' where
        _AuthKey = odKey . _Just
        _AuthToken = odOAuthToken . _Just

instance GoogleRequest OperationsDelete' where
        type Rs OperationsDelete' = Empty
        request = requestWith genomicsRequest
        requestWith rq OperationsDelete'{..}
          = go _odName _odXgafv _odUploadProtocol (Just _odPp)
              _odAccessToken
              _odUploadType
              _odBearerToken
              _odCallback
              _odQuotaUser
              (Just _odPrettyPrint)
              _odFields
              _odKey
              _odOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy OperationsDeleteResource)
                      rq
