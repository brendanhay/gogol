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
-- Module      : Network.Google.Resource.CloudResourceManager.Liens.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve a Lien by \`name\`. Callers of this method will require
-- permission on the \`parent\` resource. For example, a Lien with a
-- \`parent\` of \`projects\/1234\` requires permission
-- \`resourcemanager.projects.get\`
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.liens.get@.
module Network.Google.Resource.CloudResourceManager.Liens.Get
    (
    -- * REST Resource
      LiensGetResource

    -- * Creating a Request
    , liensGet
    , LiensGet

    -- * Request Lenses
    , lgXgafv
    , lgUploadProtocol
    , lgAccessToken
    , lgUploadType
    , lgName
    , lgCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.liens.get@ method which the
-- 'LiensGet' request conforms to.
type LiensGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Lien

-- | Retrieve a Lien by \`name\`. Callers of this method will require
-- permission on the \`parent\` resource. For example, a Lien with a
-- \`parent\` of \`projects\/1234\` requires permission
-- \`resourcemanager.projects.get\`
--
-- /See:/ 'liensGet' smart constructor.
data LiensGet =
  LiensGet'
    { _lgXgafv :: !(Maybe Xgafv)
    , _lgUploadProtocol :: !(Maybe Text)
    , _lgAccessToken :: !(Maybe Text)
    , _lgUploadType :: !(Maybe Text)
    , _lgName :: !Text
    , _lgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiensGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgXgafv'
--
-- * 'lgUploadProtocol'
--
-- * 'lgAccessToken'
--
-- * 'lgUploadType'
--
-- * 'lgName'
--
-- * 'lgCallback'
liensGet
    :: Text -- ^ 'lgName'
    -> LiensGet
liensGet pLgName_ =
  LiensGet'
    { _lgXgafv = Nothing
    , _lgUploadProtocol = Nothing
    , _lgAccessToken = Nothing
    , _lgUploadType = Nothing
    , _lgName = pLgName_
    , _lgCallback = Nothing
    }


-- | V1 error format.
lgXgafv :: Lens' LiensGet (Maybe Xgafv)
lgXgafv = lens _lgXgafv (\ s a -> s{_lgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lgUploadProtocol :: Lens' LiensGet (Maybe Text)
lgUploadProtocol
  = lens _lgUploadProtocol
      (\ s a -> s{_lgUploadProtocol = a})

-- | OAuth access token.
lgAccessToken :: Lens' LiensGet (Maybe Text)
lgAccessToken
  = lens _lgAccessToken
      (\ s a -> s{_lgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lgUploadType :: Lens' LiensGet (Maybe Text)
lgUploadType
  = lens _lgUploadType (\ s a -> s{_lgUploadType = a})

-- | Required. The name\/identifier of the Lien.
lgName :: Lens' LiensGet Text
lgName = lens _lgName (\ s a -> s{_lgName = a})

-- | JSONP
lgCallback :: Lens' LiensGet (Maybe Text)
lgCallback
  = lens _lgCallback (\ s a -> s{_lgCallback = a})

instance GoogleRequest LiensGet where
        type Rs LiensGet = Lien
        type Scopes LiensGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient LiensGet'{..}
          = go _lgName _lgXgafv _lgUploadProtocol
              _lgAccessToken
              _lgUploadType
              _lgCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy LiensGetResource)
                      mempty
