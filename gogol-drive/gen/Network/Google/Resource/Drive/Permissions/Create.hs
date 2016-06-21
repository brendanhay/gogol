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
-- Module      : Network.Google.Resource.Drive.Permissions.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a permission for a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.permissions.create@.
module Network.Google.Resource.Drive.Permissions.Create
    (
    -- * REST Resource
      PermissionsCreateResource

    -- * Creating a Request
    , permissionsCreate
    , PermissionsCreate

    -- * Request Lenses
    , pcSendNotificationEmail
    , pcPayload
    , pcEmailMessage
    , pcTransferOwnership
    , pcFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.permissions.create@ method which the
-- 'PermissionsCreate' request conforms to.
type PermissionsCreateResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             "permissions" :>
               QueryParam "sendNotificationEmail" Bool :>
                 QueryParam "emailMessage" Text :>
                   QueryParam "transferOwnership" Bool :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Permission :> Post '[JSON] Permission

-- | Creates a permission for a file.
--
-- /See:/ 'permissionsCreate' smart constructor.
data PermissionsCreate = PermissionsCreate'
    { _pcSendNotificationEmail :: !(Maybe Bool)
    , _pcPayload               :: !Permission
    , _pcEmailMessage          :: !(Maybe Text)
    , _pcTransferOwnership     :: !Bool
    , _pcFileId                :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcSendNotificationEmail'
--
-- * 'pcPayload'
--
-- * 'pcEmailMessage'
--
-- * 'pcTransferOwnership'
--
-- * 'pcFileId'
permissionsCreate
    :: Permission -- ^ 'pcPayload'
    -> Text -- ^ 'pcFileId'
    -> PermissionsCreate
permissionsCreate pPcPayload_ pPcFileId_ =
    PermissionsCreate'
    { _pcSendNotificationEmail = Nothing
    , _pcPayload = pPcPayload_
    , _pcEmailMessage = Nothing
    , _pcTransferOwnership = False
    , _pcFileId = pPcFileId_
    }

-- | Whether to send a notification email when sharing to users or groups.
-- This defaults to true for users and groups, and is not allowed for other
-- requests. It must not be disabled for ownership transfers.
pcSendNotificationEmail :: Lens' PermissionsCreate (Maybe Bool)
pcSendNotificationEmail
  = lens _pcSendNotificationEmail
      (\ s a -> s{_pcSendNotificationEmail = a})

-- | Multipart request metadata.
pcPayload :: Lens' PermissionsCreate Permission
pcPayload
  = lens _pcPayload (\ s a -> s{_pcPayload = a})

-- | A custom message to include in the notification email.
pcEmailMessage :: Lens' PermissionsCreate (Maybe Text)
pcEmailMessage
  = lens _pcEmailMessage
      (\ s a -> s{_pcEmailMessage = a})

-- | Whether to transfer ownership to the specified user and downgrade the
-- current owner to a writer. This parameter is required as an
-- acknowledgement of the side effect.
pcTransferOwnership :: Lens' PermissionsCreate Bool
pcTransferOwnership
  = lens _pcTransferOwnership
      (\ s a -> s{_pcTransferOwnership = a})

-- | The ID of the file.
pcFileId :: Lens' PermissionsCreate Text
pcFileId = lens _pcFileId (\ s a -> s{_pcFileId = a})

instance GoogleRequest PermissionsCreate where
        type Rs PermissionsCreate = Permission
        type Scopes PermissionsCreate =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient PermissionsCreate'{..}
          = go _pcFileId _pcSendNotificationEmail
              _pcEmailMessage
              (Just _pcTransferOwnership)
              (Just AltJSON)
              _pcPayload
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy PermissionsCreateResource)
                      mempty
