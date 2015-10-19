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
-- Copyright   : (c) 2015 Brendan Hay
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
    , permissionsInsert'
    , PermissionsInsert'

    -- * Request Lenses
    , piPayload
    , piEmailMessage
    , piFileId
    , piSendNotificationEmails
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.permissions.insert@ method which the
-- 'PermissionsInsert'' request conforms to.
type PermissionsInsertResource =
     "files" :>
       Capture "fileId" Text :>
         "permissions" :>
           QueryParam "emailMessage" Text :>
             QueryParam "sendNotificationEmails" Bool :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Permission :> Post '[JSON] Permission

-- | Inserts a permission for a file.
--
-- /See:/ 'permissionsInsert'' smart constructor.
data PermissionsInsert' = PermissionsInsert'
    { _piPayload                :: !Permission
    , _piEmailMessage           :: !(Maybe Text)
    , _piFileId                 :: !Text
    , _piSendNotificationEmails :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piPayload'
--
-- * 'piEmailMessage'
--
-- * 'piFileId'
--
-- * 'piSendNotificationEmails'
permissionsInsert'
    :: Permission -- ^ 'piPayload'
    -> Text -- ^ 'piFileId'
    -> PermissionsInsert'
permissionsInsert' pPiPayload_ pPiFileId_ =
    PermissionsInsert'
    { _piPayload = pPiPayload_
    , _piEmailMessage = Nothing
    , _piFileId = pPiFileId_
    , _piSendNotificationEmails = True
    }

-- | Multipart request metadata.
piPayload :: Lens' PermissionsInsert' Permission
piPayload
  = lens _piPayload (\ s a -> s{_piPayload = a})

-- | A custom message to include in notification emails.
piEmailMessage :: Lens' PermissionsInsert' (Maybe Text)
piEmailMessage
  = lens _piEmailMessage
      (\ s a -> s{_piEmailMessage = a})

-- | The ID for the file.
piFileId :: Lens' PermissionsInsert' Text
piFileId = lens _piFileId (\ s a -> s{_piFileId = a})

-- | Whether to send notification emails when sharing to users or groups.
-- This parameter is ignored and an email is sent if the role is owner.
piSendNotificationEmails :: Lens' PermissionsInsert' Bool
piSendNotificationEmails
  = lens _piSendNotificationEmails
      (\ s a -> s{_piSendNotificationEmails = a})

instance GoogleRequest PermissionsInsert' where
        type Rs PermissionsInsert' = Permission
        requestClient PermissionsInsert'{..}
          = go _piFileId _piEmailMessage
              (Just _piSendNotificationEmails)
              (Just AltJSON)
              _piPayload
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy PermissionsInsertResource)
                      mempty
