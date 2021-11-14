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
-- Module      : Network.Google.Resource.CloudResourceManager.Liens.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a Lien which applies to the resource denoted by the \`parent\`
-- field. Callers of this method will require permission on the \`parent\`
-- resource. For example, applying to \`projects\/1234\` requires
-- permission \`resourcemanager.projects.updateLiens\`. NOTE: Some
-- resources may limit the number of Liens which may be applied.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.liens.create@.
module Network.Google.Resource.CloudResourceManager.Liens.Create
    (
    -- * REST Resource
      LiensCreateResource

    -- * Creating a Request
    , liensCreate
    , LiensCreate

    -- * Request Lenses
    , lcXgafv
    , lcUploadProtocol
    , lcAccessToken
    , lcUploadType
    , lcPayload
    , lcCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.liens.create@ method which the
-- 'LiensCreate' request conforms to.
type LiensCreateResource =
     "v3" :>
       "liens" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Lien :> Post '[JSON] Lien

-- | Create a Lien which applies to the resource denoted by the \`parent\`
-- field. Callers of this method will require permission on the \`parent\`
-- resource. For example, applying to \`projects\/1234\` requires
-- permission \`resourcemanager.projects.updateLiens\`. NOTE: Some
-- resources may limit the number of Liens which may be applied.
--
-- /See:/ 'liensCreate' smart constructor.
data LiensCreate =
  LiensCreate'
    { _lcXgafv :: !(Maybe Xgafv)
    , _lcUploadProtocol :: !(Maybe Text)
    , _lcAccessToken :: !(Maybe Text)
    , _lcUploadType :: !(Maybe Text)
    , _lcPayload :: !Lien
    , _lcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiensCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcXgafv'
--
-- * 'lcUploadProtocol'
--
-- * 'lcAccessToken'
--
-- * 'lcUploadType'
--
-- * 'lcPayload'
--
-- * 'lcCallback'
liensCreate
    :: Lien -- ^ 'lcPayload'
    -> LiensCreate
liensCreate pLcPayload_ =
  LiensCreate'
    { _lcXgafv = Nothing
    , _lcUploadProtocol = Nothing
    , _lcAccessToken = Nothing
    , _lcUploadType = Nothing
    , _lcPayload = pLcPayload_
    , _lcCallback = Nothing
    }


-- | V1 error format.
lcXgafv :: Lens' LiensCreate (Maybe Xgafv)
lcXgafv = lens _lcXgafv (\ s a -> s{_lcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lcUploadProtocol :: Lens' LiensCreate (Maybe Text)
lcUploadProtocol
  = lens _lcUploadProtocol
      (\ s a -> s{_lcUploadProtocol = a})

-- | OAuth access token.
lcAccessToken :: Lens' LiensCreate (Maybe Text)
lcAccessToken
  = lens _lcAccessToken
      (\ s a -> s{_lcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lcUploadType :: Lens' LiensCreate (Maybe Text)
lcUploadType
  = lens _lcUploadType (\ s a -> s{_lcUploadType = a})

-- | Multipart request metadata.
lcPayload :: Lens' LiensCreate Lien
lcPayload
  = lens _lcPayload (\ s a -> s{_lcPayload = a})

-- | JSONP
lcCallback :: Lens' LiensCreate (Maybe Text)
lcCallback
  = lens _lcCallback (\ s a -> s{_lcCallback = a})

instance GoogleRequest LiensCreate where
        type Rs LiensCreate = Lien
        type Scopes LiensCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient LiensCreate'{..}
          = go _lcXgafv _lcUploadProtocol _lcAccessToken
              _lcUploadType
              _lcCallback
              (Just AltJSON)
              _lcPayload
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy LiensCreateResource)
                      mempty
