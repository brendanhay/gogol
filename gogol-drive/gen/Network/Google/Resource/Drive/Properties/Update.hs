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
-- Module      : Network.Google.Resource.Drive.Properties.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a property.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.properties.update@.
module Network.Google.Resource.Drive.Properties.Update
    (
    -- * REST Resource
      PropertiesUpdateResource

    -- * Creating a Request
    , propertiesUpdate
    , PropertiesUpdate

    -- * Request Lenses
    , puPropertyKey
    , puVisibility
    , puPayload
    , puFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.properties.update@ method which the
-- 'PropertiesUpdate' request conforms to.
type PropertiesUpdateResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "fileId" Text :>
             "properties" :>
               Capture "propertyKey" Text :>
                 QueryParam "visibility" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Property :> Put '[JSON] Property

-- | Updates a property.
--
-- /See:/ 'propertiesUpdate' smart constructor.
data PropertiesUpdate = PropertiesUpdate
    { _puPropertyKey :: !Text
    , _puVisibility  :: !Text
    , _puPayload     :: !Property
    , _puFileId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puPropertyKey'
--
-- * 'puVisibility'
--
-- * 'puPayload'
--
-- * 'puFileId'
propertiesUpdate
    :: Text -- ^ 'puPropertyKey'
    -> Property -- ^ 'puPayload'
    -> Text -- ^ 'puFileId'
    -> PropertiesUpdate
propertiesUpdate pPuPropertyKey_ pPuPayload_ pPuFileId_ =
    PropertiesUpdate
    { _puPropertyKey = pPuPropertyKey_
    , _puVisibility = "private"
    , _puPayload = pPuPayload_
    , _puFileId = pPuFileId_
    }

-- | The key of the property.
puPropertyKey :: Lens' PropertiesUpdate Text
puPropertyKey
  = lens _puPropertyKey
      (\ s a -> s{_puPropertyKey = a})

-- | The visibility of the property.
puVisibility :: Lens' PropertiesUpdate Text
puVisibility
  = lens _puVisibility (\ s a -> s{_puVisibility = a})

-- | Multipart request metadata.
puPayload :: Lens' PropertiesUpdate Property
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

-- | The ID of the file.
puFileId :: Lens' PropertiesUpdate Text
puFileId = lens _puFileId (\ s a -> s{_puFileId = a})

instance GoogleRequest PropertiesUpdate where
        type Rs PropertiesUpdate = Property
        type Scopes PropertiesUpdate =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.metadata"]
        requestClient PropertiesUpdate{..}
          = go _puFileId _puPropertyKey (Just _puVisibility)
              (Just AltJSON)
              _puPayload
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy PropertiesUpdateResource)
                      mempty
