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
-- Module      : Network.Google.Resource.CloudResourceManager.TagValues.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a TagValue. The TagValue cannot have any bindings when it is
-- deleted.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagValues.delete@.
module Network.Google.Resource.CloudResourceManager.TagValues.Delete
    (
    -- * REST Resource
      TagValuesDeleteResource

    -- * Creating a Request
    , tagValuesDelete
    , TagValuesDelete

    -- * Request Lenses
    , tvdXgafv
    , tvdEtag
    , tvdValidateOnly
    , tvdUploadProtocol
    , tvdAccessToken
    , tvdUploadType
    , tvdName
    , tvdCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagValues.delete@ method which the
-- 'TagValuesDelete' request conforms to.
type TagValuesDeleteResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "etag" Text :>
             QueryParam "validateOnly" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a TagValue. The TagValue cannot have any bindings when it is
-- deleted.
--
-- /See:/ 'tagValuesDelete' smart constructor.
data TagValuesDelete =
  TagValuesDelete'
    { _tvdXgafv :: !(Maybe Xgafv)
    , _tvdEtag :: !(Maybe Text)
    , _tvdValidateOnly :: !(Maybe Bool)
    , _tvdUploadProtocol :: !(Maybe Text)
    , _tvdAccessToken :: !(Maybe Text)
    , _tvdUploadType :: !(Maybe Text)
    , _tvdName :: !Text
    , _tvdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagValuesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvdXgafv'
--
-- * 'tvdEtag'
--
-- * 'tvdValidateOnly'
--
-- * 'tvdUploadProtocol'
--
-- * 'tvdAccessToken'
--
-- * 'tvdUploadType'
--
-- * 'tvdName'
--
-- * 'tvdCallback'
tagValuesDelete
    :: Text -- ^ 'tvdName'
    -> TagValuesDelete
tagValuesDelete pTvdName_ =
  TagValuesDelete'
    { _tvdXgafv = Nothing
    , _tvdEtag = Nothing
    , _tvdValidateOnly = Nothing
    , _tvdUploadProtocol = Nothing
    , _tvdAccessToken = Nothing
    , _tvdUploadType = Nothing
    , _tvdName = pTvdName_
    , _tvdCallback = Nothing
    }


-- | V1 error format.
tvdXgafv :: Lens' TagValuesDelete (Maybe Xgafv)
tvdXgafv = lens _tvdXgafv (\ s a -> s{_tvdXgafv = a})

-- | Optional. The etag known to the client for the expected state of the
-- TagValue. This is to be used for optimistic concurrency.
tvdEtag :: Lens' TagValuesDelete (Maybe Text)
tvdEtag = lens _tvdEtag (\ s a -> s{_tvdEtag = a})

-- | Optional. Set as true to perform the validations necessary for deletion,
-- but not actually perform the action.
tvdValidateOnly :: Lens' TagValuesDelete (Maybe Bool)
tvdValidateOnly
  = lens _tvdValidateOnly
      (\ s a -> s{_tvdValidateOnly = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tvdUploadProtocol :: Lens' TagValuesDelete (Maybe Text)
tvdUploadProtocol
  = lens _tvdUploadProtocol
      (\ s a -> s{_tvdUploadProtocol = a})

-- | OAuth access token.
tvdAccessToken :: Lens' TagValuesDelete (Maybe Text)
tvdAccessToken
  = lens _tvdAccessToken
      (\ s a -> s{_tvdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tvdUploadType :: Lens' TagValuesDelete (Maybe Text)
tvdUploadType
  = lens _tvdUploadType
      (\ s a -> s{_tvdUploadType = a})

-- | Required. Resource name for TagValue to be deleted in the format
-- tagValues\/456.
tvdName :: Lens' TagValuesDelete Text
tvdName = lens _tvdName (\ s a -> s{_tvdName = a})

-- | JSONP
tvdCallback :: Lens' TagValuesDelete (Maybe Text)
tvdCallback
  = lens _tvdCallback (\ s a -> s{_tvdCallback = a})

instance GoogleRequest TagValuesDelete where
        type Rs TagValuesDelete = Operation
        type Scopes TagValuesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TagValuesDelete'{..}
          = go _tvdName _tvdXgafv _tvdEtag _tvdValidateOnly
              _tvdUploadProtocol
              _tvdAccessToken
              _tvdUploadType
              _tvdCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy TagValuesDeleteResource)
                      mempty
