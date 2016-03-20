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
-- Module      : Network.Google.Resource.Drive.Permissions.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a permission for a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.permissions.insert@.
module Network.Google.Resource.Drive.Permissions.Insert
    (
    -- * REST Resource
      PermissionsInsertResource

    -- * Creating a Request
    , permissionsInsert
    , PermissionsInsert

    -- * Request Lenses
    , piiPayload
    , piiEmailMessage
    , piiFileId
    , piiSendNotificationEmails
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.permissions.insert@ method which the
-- 'PermissionsInsert' request conforms to.
type PermissionsInsertResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "fileId" Text :>
             "permissions" :>
               QueryParam "emailMessage" Text :>
                 QueryParam "sendNotificationEmails" Bool :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Permission :> Post '[JSON] Permission

-- | Inserts a permission for a file.
--
-- /See:/ 'permissionsInsert' smart constructor.
data PermissionsInsert = PermissionsInsert
    { _piiPayload                :: !Permission
    , _piiEmailMessage           :: !(Maybe Text)
    , _piiFileId                 :: !Text
    , _piiSendNotificationEmails :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piiPayload'
--
-- * 'piiEmailMessage'
--
-- * 'piiFileId'
--
-- * 'piiSendNotificationEmails'
permissionsInsert
    :: Permission -- ^ 'piiPayload'
    -> Text -- ^ 'piiFileId'
    -> PermissionsInsert
permissionsInsert pPiiPayload_ pPiiFileId_ =
    PermissionsInsert
    { _piiPayload = pPiiPayload_
    , _piiEmailMessage = Nothing
    , _piiFileId = pPiiFileId_
    , _piiSendNotificationEmails = True
    }

-- | Multipart request metadata.
piiPayload :: Lens' PermissionsInsert Permission
piiPayload
  = lens _piiPayload (\ s a -> s{_piiPayload = a})

-- | A custom message to include in notification emails.
piiEmailMessage :: Lens' PermissionsInsert (Maybe Text)
piiEmailMessage
  = lens _piiEmailMessage
      (\ s a -> s{_piiEmailMessage = a})

-- | The ID for the file.
piiFileId :: Lens' PermissionsInsert Text
piiFileId
  = lens _piiFileId (\ s a -> s{_piiFileId = a})

-- | Whether to send notification emails when sharing to users or groups.
-- This parameter is ignored and an email is sent if the role is owner.
piiSendNotificationEmails :: Lens' PermissionsInsert Bool
piiSendNotificationEmails
  = lens _piiSendNotificationEmails
      (\ s a -> s{_piiSendNotificationEmails = a})

instance GoogleRequest PermissionsInsert where
        type Rs PermissionsInsert = Permission
        requestClient PermissionsInsert{..}
          = go _piiFileId _piiEmailMessage
              (Just _piiSendNotificationEmails)
              (Just AltJSON)
              _piiPayload
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy PermissionsInsertResource)
                      mempty
