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
-- Module      : Network.Google.Resource.CloudResourceManager.TagValues.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the attributes of the TagValue resource.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagValues.patch@.
module Network.Google.Resource.CloudResourceManager.TagValues.Patch
    (
    -- * REST Resource
      TagValuesPatchResource

    -- * Creating a Request
    , tagValuesPatch
    , TagValuesPatch

    -- * Request Lenses
    , tvpXgafv
    , tvpValidateOnly
    , tvpUploadProtocol
    , tvpUpdateMask
    , tvpAccessToken
    , tvpUploadType
    , tvpPayload
    , tvpName
    , tvpCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagValues.patch@ method which the
-- 'TagValuesPatch' request conforms to.
type TagValuesPatchResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "validateOnly" Bool :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" GFieldMask :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TagValue :> Patch '[JSON] Operation

-- | Updates the attributes of the TagValue resource.
--
-- /See:/ 'tagValuesPatch' smart constructor.
data TagValuesPatch =
  TagValuesPatch'
    { _tvpXgafv :: !(Maybe Xgafv)
    , _tvpValidateOnly :: !(Maybe Bool)
    , _tvpUploadProtocol :: !(Maybe Text)
    , _tvpUpdateMask :: !(Maybe GFieldMask)
    , _tvpAccessToken :: !(Maybe Text)
    , _tvpUploadType :: !(Maybe Text)
    , _tvpPayload :: !TagValue
    , _tvpName :: !Text
    , _tvpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagValuesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvpXgafv'
--
-- * 'tvpValidateOnly'
--
-- * 'tvpUploadProtocol'
--
-- * 'tvpUpdateMask'
--
-- * 'tvpAccessToken'
--
-- * 'tvpUploadType'
--
-- * 'tvpPayload'
--
-- * 'tvpName'
--
-- * 'tvpCallback'
tagValuesPatch
    :: TagValue -- ^ 'tvpPayload'
    -> Text -- ^ 'tvpName'
    -> TagValuesPatch
tagValuesPatch pTvpPayload_ pTvpName_ =
  TagValuesPatch'
    { _tvpXgafv = Nothing
    , _tvpValidateOnly = Nothing
    , _tvpUploadProtocol = Nothing
    , _tvpUpdateMask = Nothing
    , _tvpAccessToken = Nothing
    , _tvpUploadType = Nothing
    , _tvpPayload = pTvpPayload_
    , _tvpName = pTvpName_
    , _tvpCallback = Nothing
    }


-- | V1 error format.
tvpXgafv :: Lens' TagValuesPatch (Maybe Xgafv)
tvpXgafv = lens _tvpXgafv (\ s a -> s{_tvpXgafv = a})

-- | Optional. True to perform validations necessary for updating the
-- resource, but not actually perform the action.
tvpValidateOnly :: Lens' TagValuesPatch (Maybe Bool)
tvpValidateOnly
  = lens _tvpValidateOnly
      (\ s a -> s{_tvpValidateOnly = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tvpUploadProtocol :: Lens' TagValuesPatch (Maybe Text)
tvpUploadProtocol
  = lens _tvpUploadProtocol
      (\ s a -> s{_tvpUploadProtocol = a})

-- | Optional. Fields to be updated.
tvpUpdateMask :: Lens' TagValuesPatch (Maybe GFieldMask)
tvpUpdateMask
  = lens _tvpUpdateMask
      (\ s a -> s{_tvpUpdateMask = a})

-- | OAuth access token.
tvpAccessToken :: Lens' TagValuesPatch (Maybe Text)
tvpAccessToken
  = lens _tvpAccessToken
      (\ s a -> s{_tvpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tvpUploadType :: Lens' TagValuesPatch (Maybe Text)
tvpUploadType
  = lens _tvpUploadType
      (\ s a -> s{_tvpUploadType = a})

-- | Multipart request metadata.
tvpPayload :: Lens' TagValuesPatch TagValue
tvpPayload
  = lens _tvpPayload (\ s a -> s{_tvpPayload = a})

-- | Immutable. Resource name for TagValue in the format \`tagValues\/456\`.
tvpName :: Lens' TagValuesPatch Text
tvpName = lens _tvpName (\ s a -> s{_tvpName = a})

-- | JSONP
tvpCallback :: Lens' TagValuesPatch (Maybe Text)
tvpCallback
  = lens _tvpCallback (\ s a -> s{_tvpCallback = a})

instance GoogleRequest TagValuesPatch where
        type Rs TagValuesPatch = Operation
        type Scopes TagValuesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TagValuesPatch'{..}
          = go _tvpName _tvpXgafv _tvpValidateOnly
              _tvpUploadProtocol
              _tvpUpdateMask
              _tvpAccessToken
              _tvpUploadType
              _tvpCallback
              (Just AltJSON)
              _tvpPayload
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy TagValuesPatchResource)
                      mempty
