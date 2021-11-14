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
-- Module      : Network.Google.Resource.CloudIdentity.Groups.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a \`Group\`.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.patch@.
module Network.Google.Resource.CloudIdentity.Groups.Patch
    (
    -- * REST Resource
      GroupsPatchResource

    -- * Creating a Request
    , groupsPatch
    , GroupsPatch

    -- * Request Lenses
    , gpXgafv
    , gpUploadProtocol
    , gpUpdateMask
    , gpAccessToken
    , gpUploadType
    , gpPayload
    , gpName
    , gpCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.groups.patch@ method which the
-- 'GroupsPatch' request conforms to.
type GroupsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Group :> Patch '[JSON] Operation

-- | Updates a \`Group\`.
--
-- /See:/ 'groupsPatch' smart constructor.
data GroupsPatch =
  GroupsPatch'
    { _gpXgafv :: !(Maybe Xgafv)
    , _gpUploadProtocol :: !(Maybe Text)
    , _gpUpdateMask :: !(Maybe GFieldMask)
    , _gpAccessToken :: !(Maybe Text)
    , _gpUploadType :: !(Maybe Text)
    , _gpPayload :: !Group
    , _gpName :: !Text
    , _gpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpXgafv'
--
-- * 'gpUploadProtocol'
--
-- * 'gpUpdateMask'
--
-- * 'gpAccessToken'
--
-- * 'gpUploadType'
--
-- * 'gpPayload'
--
-- * 'gpName'
--
-- * 'gpCallback'
groupsPatch
    :: Group -- ^ 'gpPayload'
    -> Text -- ^ 'gpName'
    -> GroupsPatch
groupsPatch pGpPayload_ pGpName_ =
  GroupsPatch'
    { _gpXgafv = Nothing
    , _gpUploadProtocol = Nothing
    , _gpUpdateMask = Nothing
    , _gpAccessToken = Nothing
    , _gpUploadType = Nothing
    , _gpPayload = pGpPayload_
    , _gpName = pGpName_
    , _gpCallback = Nothing
    }


-- | V1 error format.
gpXgafv :: Lens' GroupsPatch (Maybe Xgafv)
gpXgafv = lens _gpXgafv (\ s a -> s{_gpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gpUploadProtocol :: Lens' GroupsPatch (Maybe Text)
gpUploadProtocol
  = lens _gpUploadProtocol
      (\ s a -> s{_gpUploadProtocol = a})

-- | Required. The names of fields to update. May only contain the following
-- fields: \`display_name\`, \`description\`, \`labels\`.
gpUpdateMask :: Lens' GroupsPatch (Maybe GFieldMask)
gpUpdateMask
  = lens _gpUpdateMask (\ s a -> s{_gpUpdateMask = a})

-- | OAuth access token.
gpAccessToken :: Lens' GroupsPatch (Maybe Text)
gpAccessToken
  = lens _gpAccessToken
      (\ s a -> s{_gpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gpUploadType :: Lens' GroupsPatch (Maybe Text)
gpUploadType
  = lens _gpUploadType (\ s a -> s{_gpUploadType = a})

-- | Multipart request metadata.
gpPayload :: Lens' GroupsPatch Group
gpPayload
  = lens _gpPayload (\ s a -> s{_gpPayload = a})

-- | Output only. The [resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- \`Group\`. Shall be of the form \`groups\/{group_id}\`.
gpName :: Lens' GroupsPatch Text
gpName = lens _gpName (\ s a -> s{_gpName = a})

-- | JSONP
gpCallback :: Lens' GroupsPatch (Maybe Text)
gpCallback
  = lens _gpCallback (\ s a -> s{_gpCallback = a})

instance GoogleRequest GroupsPatch where
        type Rs GroupsPatch = Operation
        type Scopes GroupsPatch =
             '["https://www.googleapis.com/auth/cloud-identity.groups",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient GroupsPatch'{..}
          = go _gpName _gpXgafv _gpUploadProtocol _gpUpdateMask
              _gpAccessToken
              _gpUploadType
              _gpCallback
              (Just AltJSON)
              _gpPayload
              cloudIdentityService
          where go
                  = buildClient (Proxy :: Proxy GroupsPatchResource)
                      mempty
