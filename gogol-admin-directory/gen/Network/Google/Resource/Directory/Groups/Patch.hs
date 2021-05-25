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
-- Module      : Network.Google.Resource.Directory.Groups.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a group\'s properties. This method supports [patch
-- semantics](\/admin-sdk\/directory\/v1\/guides\/performance#patch).
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.groups.patch@.
module Network.Google.Resource.Directory.Groups.Patch
    (
    -- * REST Resource
      GroupsPatchResource

    -- * Creating a Request
    , groupsPatch
    , GroupsPatch

    -- * Request Lenses
    , gpXgafv
    , gpUploadProtocol
    , gpAccessToken
    , gpGroupKey
    , gpUploadType
    , gpPayload
    , gpCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.groups.patch@ method which the
-- 'GroupsPatch' request conforms to.
type GroupsPatchResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Group :> Patch '[JSON] Group

-- | Updates a group\'s properties. This method supports [patch
-- semantics](\/admin-sdk\/directory\/v1\/guides\/performance#patch).
--
-- /See:/ 'groupsPatch' smart constructor.
data GroupsPatch =
  GroupsPatch'
    { _gpXgafv :: !(Maybe Xgafv)
    , _gpUploadProtocol :: !(Maybe Text)
    , _gpAccessToken :: !(Maybe Text)
    , _gpGroupKey :: !Text
    , _gpUploadType :: !(Maybe Text)
    , _gpPayload :: !Group
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
-- * 'gpAccessToken'
--
-- * 'gpGroupKey'
--
-- * 'gpUploadType'
--
-- * 'gpPayload'
--
-- * 'gpCallback'
groupsPatch
    :: Text -- ^ 'gpGroupKey'
    -> Group -- ^ 'gpPayload'
    -> GroupsPatch
groupsPatch pGpGroupKey_ pGpPayload_ =
  GroupsPatch'
    { _gpXgafv = Nothing
    , _gpUploadProtocol = Nothing
    , _gpAccessToken = Nothing
    , _gpGroupKey = pGpGroupKey_
    , _gpUploadType = Nothing
    , _gpPayload = pGpPayload_
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

-- | OAuth access token.
gpAccessToken :: Lens' GroupsPatch (Maybe Text)
gpAccessToken
  = lens _gpAccessToken
      (\ s a -> s{_gpAccessToken = a})

-- | Identifies the group in the API request. The value can be the group\'s
-- email address, group alias, or the unique group ID.
gpGroupKey :: Lens' GroupsPatch Text
gpGroupKey
  = lens _gpGroupKey (\ s a -> s{_gpGroupKey = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gpUploadType :: Lens' GroupsPatch (Maybe Text)
gpUploadType
  = lens _gpUploadType (\ s a -> s{_gpUploadType = a})

-- | Multipart request metadata.
gpPayload :: Lens' GroupsPatch Group
gpPayload
  = lens _gpPayload (\ s a -> s{_gpPayload = a})

-- | JSONP
gpCallback :: Lens' GroupsPatch (Maybe Text)
gpCallback
  = lens _gpCallback (\ s a -> s{_gpCallback = a})

instance GoogleRequest GroupsPatch where
        type Rs GroupsPatch = Group
        type Scopes GroupsPatch =
             '["https://www.googleapis.com/auth/admin.directory.group"]
        requestClient GroupsPatch'{..}
          = go _gpGroupKey _gpXgafv _gpUploadProtocol
              _gpAccessToken
              _gpUploadType
              _gpCallback
              (Just AltJSON)
              _gpPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy GroupsPatchResource)
                      mempty
