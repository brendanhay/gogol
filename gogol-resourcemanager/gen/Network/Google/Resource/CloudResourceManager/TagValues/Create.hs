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
-- Module      : Network.Google.Resource.CloudResourceManager.TagValues.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a TagValue as a child of the specified TagKey. If a another
-- request with the same parameters is sent while the original request is
-- in process the second request will receive an error. A maximum of 300
-- TagValues can exist under a TagKey at any given time.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagValues.create@.
module Network.Google.Resource.CloudResourceManager.TagValues.Create
    (
    -- * REST Resource
      TagValuesCreateResource

    -- * Creating a Request
    , tagValuesCreate
    , TagValuesCreate

    -- * Request Lenses
    , tvcXgafv
    , tvcValidateOnly
    , tvcUploadProtocol
    , tvcAccessToken
    , tvcUploadType
    , tvcPayload
    , tvcCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagValues.create@ method which the
-- 'TagValuesCreate' request conforms to.
type TagValuesCreateResource =
     "v3" :>
       "tagValues" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "validateOnly" Bool :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TagValue :> Post '[JSON] Operation

-- | Creates a TagValue as a child of the specified TagKey. If a another
-- request with the same parameters is sent while the original request is
-- in process the second request will receive an error. A maximum of 300
-- TagValues can exist under a TagKey at any given time.
--
-- /See:/ 'tagValuesCreate' smart constructor.
data TagValuesCreate =
  TagValuesCreate'
    { _tvcXgafv :: !(Maybe Xgafv)
    , _tvcValidateOnly :: !(Maybe Bool)
    , _tvcUploadProtocol :: !(Maybe Text)
    , _tvcAccessToken :: !(Maybe Text)
    , _tvcUploadType :: !(Maybe Text)
    , _tvcPayload :: !TagValue
    , _tvcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagValuesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvcXgafv'
--
-- * 'tvcValidateOnly'
--
-- * 'tvcUploadProtocol'
--
-- * 'tvcAccessToken'
--
-- * 'tvcUploadType'
--
-- * 'tvcPayload'
--
-- * 'tvcCallback'
tagValuesCreate
    :: TagValue -- ^ 'tvcPayload'
    -> TagValuesCreate
tagValuesCreate pTvcPayload_ =
  TagValuesCreate'
    { _tvcXgafv = Nothing
    , _tvcValidateOnly = Nothing
    , _tvcUploadProtocol = Nothing
    , _tvcAccessToken = Nothing
    , _tvcUploadType = Nothing
    , _tvcPayload = pTvcPayload_
    , _tvcCallback = Nothing
    }


-- | V1 error format.
tvcXgafv :: Lens' TagValuesCreate (Maybe Xgafv)
tvcXgafv = lens _tvcXgafv (\ s a -> s{_tvcXgafv = a})

-- | Optional. Set as true to perform the validations necessary for creating
-- the resource, but not actually perform the action.
tvcValidateOnly :: Lens' TagValuesCreate (Maybe Bool)
tvcValidateOnly
  = lens _tvcValidateOnly
      (\ s a -> s{_tvcValidateOnly = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tvcUploadProtocol :: Lens' TagValuesCreate (Maybe Text)
tvcUploadProtocol
  = lens _tvcUploadProtocol
      (\ s a -> s{_tvcUploadProtocol = a})

-- | OAuth access token.
tvcAccessToken :: Lens' TagValuesCreate (Maybe Text)
tvcAccessToken
  = lens _tvcAccessToken
      (\ s a -> s{_tvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tvcUploadType :: Lens' TagValuesCreate (Maybe Text)
tvcUploadType
  = lens _tvcUploadType
      (\ s a -> s{_tvcUploadType = a})

-- | Multipart request metadata.
tvcPayload :: Lens' TagValuesCreate TagValue
tvcPayload
  = lens _tvcPayload (\ s a -> s{_tvcPayload = a})

-- | JSONP
tvcCallback :: Lens' TagValuesCreate (Maybe Text)
tvcCallback
  = lens _tvcCallback (\ s a -> s{_tvcCallback = a})

instance GoogleRequest TagValuesCreate where
        type Rs TagValuesCreate = Operation
        type Scopes TagValuesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TagValuesCreate'{..}
          = go _tvcXgafv _tvcValidateOnly _tvcUploadProtocol
              _tvcAccessToken
              _tvcUploadType
              _tvcCallback
              (Just AltJSON)
              _tvcPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy TagValuesCreateResource)
                      mempty
