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
-- Module      : Network.Google.Resource.CloudResourceManager.Liens.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a Lien by \`name\`. Callers of this method will require
-- permission on the \`parent\` resource. For example, a Lien with a
-- \`parent\` of \`projects\/1234\` requires permission
-- \`resourcemanager.projects.updateLiens\`.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.liens.delete@.
module Network.Google.Resource.CloudResourceManager.Liens.Delete
    (
    -- * REST Resource
      LiensDeleteResource

    -- * Creating a Request
    , liensDelete
    , LiensDelete

    -- * Request Lenses
    , ldXgafv
    , ldUploadProtocol
    , ldAccessToken
    , ldUploadType
    , ldName
    , ldCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.liens.delete@ method which the
-- 'LiensDelete' request conforms to.
type LiensDeleteResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Delete a Lien by \`name\`. Callers of this method will require
-- permission on the \`parent\` resource. For example, a Lien with a
-- \`parent\` of \`projects\/1234\` requires permission
-- \`resourcemanager.projects.updateLiens\`.
--
-- /See:/ 'liensDelete' smart constructor.
data LiensDelete =
  LiensDelete'
    { _ldXgafv :: !(Maybe Xgafv)
    , _ldUploadProtocol :: !(Maybe Text)
    , _ldAccessToken :: !(Maybe Text)
    , _ldUploadType :: !(Maybe Text)
    , _ldName :: !Text
    , _ldCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiensDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldXgafv'
--
-- * 'ldUploadProtocol'
--
-- * 'ldAccessToken'
--
-- * 'ldUploadType'
--
-- * 'ldName'
--
-- * 'ldCallback'
liensDelete
    :: Text -- ^ 'ldName'
    -> LiensDelete
liensDelete pLdName_ =
  LiensDelete'
    { _ldXgafv = Nothing
    , _ldUploadProtocol = Nothing
    , _ldAccessToken = Nothing
    , _ldUploadType = Nothing
    , _ldName = pLdName_
    , _ldCallback = Nothing
    }


-- | V1 error format.
ldXgafv :: Lens' LiensDelete (Maybe Xgafv)
ldXgafv = lens _ldXgafv (\ s a -> s{_ldXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ldUploadProtocol :: Lens' LiensDelete (Maybe Text)
ldUploadProtocol
  = lens _ldUploadProtocol
      (\ s a -> s{_ldUploadProtocol = a})

-- | OAuth access token.
ldAccessToken :: Lens' LiensDelete (Maybe Text)
ldAccessToken
  = lens _ldAccessToken
      (\ s a -> s{_ldAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ldUploadType :: Lens' LiensDelete (Maybe Text)
ldUploadType
  = lens _ldUploadType (\ s a -> s{_ldUploadType = a})

-- | Required. The name\/identifier of the Lien to delete.
ldName :: Lens' LiensDelete Text
ldName = lens _ldName (\ s a -> s{_ldName = a})

-- | JSONP
ldCallback :: Lens' LiensDelete (Maybe Text)
ldCallback
  = lens _ldCallback (\ s a -> s{_ldCallback = a})

instance GoogleRequest LiensDelete where
        type Rs LiensDelete = Empty
        type Scopes LiensDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient LiensDelete'{..}
          = go _ldName _ldXgafv _ldUploadProtocol
              _ldAccessToken
              _ldUploadType
              _ldCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy LiensDeleteResource)
                      mempty
