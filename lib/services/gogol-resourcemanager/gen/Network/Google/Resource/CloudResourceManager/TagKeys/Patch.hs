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
-- Module      : Network.Google.Resource.CloudResourceManager.TagKeys.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the attributes of the TagKey resource.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagKeys.patch@.
module Network.Google.Resource.CloudResourceManager.TagKeys.Patch
    (
    -- * REST Resource
      TagKeysPatchResource

    -- * Creating a Request
    , tagKeysPatch
    , TagKeysPatch

    -- * Request Lenses
    , tkpXgafv
    , tkpValidateOnly
    , tkpUploadProtocol
    , tkpUpdateMask
    , tkpAccessToken
    , tkpUploadType
    , tkpPayload
    , tkpName
    , tkpCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagKeys.patch@ method which the
-- 'TagKeysPatch' request conforms to.
type TagKeysPatchResource =
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
                         ReqBody '[JSON] TagKey :> Patch '[JSON] Operation

-- | Updates the attributes of the TagKey resource.
--
-- /See:/ 'tagKeysPatch' smart constructor.
data TagKeysPatch =
  TagKeysPatch'
    { _tkpXgafv :: !(Maybe Xgafv)
    , _tkpValidateOnly :: !(Maybe Bool)
    , _tkpUploadProtocol :: !(Maybe Text)
    , _tkpUpdateMask :: !(Maybe GFieldMask)
    , _tkpAccessToken :: !(Maybe Text)
    , _tkpUploadType :: !(Maybe Text)
    , _tkpPayload :: !TagKey
    , _tkpName :: !Text
    , _tkpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagKeysPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tkpXgafv'
--
-- * 'tkpValidateOnly'
--
-- * 'tkpUploadProtocol'
--
-- * 'tkpUpdateMask'
--
-- * 'tkpAccessToken'
--
-- * 'tkpUploadType'
--
-- * 'tkpPayload'
--
-- * 'tkpName'
--
-- * 'tkpCallback'
tagKeysPatch
    :: TagKey -- ^ 'tkpPayload'
    -> Text -- ^ 'tkpName'
    -> TagKeysPatch
tagKeysPatch pTkpPayload_ pTkpName_ =
  TagKeysPatch'
    { _tkpXgafv = Nothing
    , _tkpValidateOnly = Nothing
    , _tkpUploadProtocol = Nothing
    , _tkpUpdateMask = Nothing
    , _tkpAccessToken = Nothing
    , _tkpUploadType = Nothing
    , _tkpPayload = pTkpPayload_
    , _tkpName = pTkpName_
    , _tkpCallback = Nothing
    }


-- | V1 error format.
tkpXgafv :: Lens' TagKeysPatch (Maybe Xgafv)
tkpXgafv = lens _tkpXgafv (\ s a -> s{_tkpXgafv = a})

-- | Set as true to perform validations necessary for updating the resource,
-- but not actually perform the action.
tkpValidateOnly :: Lens' TagKeysPatch (Maybe Bool)
tkpValidateOnly
  = lens _tkpValidateOnly
      (\ s a -> s{_tkpValidateOnly = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tkpUploadProtocol :: Lens' TagKeysPatch (Maybe Text)
tkpUploadProtocol
  = lens _tkpUploadProtocol
      (\ s a -> s{_tkpUploadProtocol = a})

-- | Fields to be updated. The mask may only contain \`description\` or
-- \`etag\`. If omitted entirely, both \`description\` and \`etag\` are
-- assumed to be significant.
tkpUpdateMask :: Lens' TagKeysPatch (Maybe GFieldMask)
tkpUpdateMask
  = lens _tkpUpdateMask
      (\ s a -> s{_tkpUpdateMask = a})

-- | OAuth access token.
tkpAccessToken :: Lens' TagKeysPatch (Maybe Text)
tkpAccessToken
  = lens _tkpAccessToken
      (\ s a -> s{_tkpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tkpUploadType :: Lens' TagKeysPatch (Maybe Text)
tkpUploadType
  = lens _tkpUploadType
      (\ s a -> s{_tkpUploadType = a})

-- | Multipart request metadata.
tkpPayload :: Lens' TagKeysPatch TagKey
tkpPayload
  = lens _tkpPayload (\ s a -> s{_tkpPayload = a})

-- | Immutable. The resource name for a TagKey. Must be in the format
-- \`tagKeys\/{tag_key_id}\`, where \`tag_key_id\` is the generated numeric
-- id for the TagKey.
tkpName :: Lens' TagKeysPatch Text
tkpName = lens _tkpName (\ s a -> s{_tkpName = a})

-- | JSONP
tkpCallback :: Lens' TagKeysPatch (Maybe Text)
tkpCallback
  = lens _tkpCallback (\ s a -> s{_tkpCallback = a})

instance GoogleRequest TagKeysPatch where
        type Rs TagKeysPatch = Operation
        type Scopes TagKeysPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TagKeysPatch'{..}
          = go _tkpName _tkpXgafv _tkpValidateOnly
              _tkpUploadProtocol
              _tkpUpdateMask
              _tkpAccessToken
              _tkpUploadType
              _tkpCallback
              (Just AltJSON)
              _tkpPayload
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy TagKeysPatchResource)
                      mempty
