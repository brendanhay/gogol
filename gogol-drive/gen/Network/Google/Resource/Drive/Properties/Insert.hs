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
-- Module      : Network.Google.Resource.Drive.Properties.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a property to a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.properties.insert@.
module Network.Google.Resource.Drive.Properties.Insert
    (
    -- * REST Resource
      PropertiesInsertResource

    -- * Creating a Request
    , propertiesInsert
    , PropertiesInsert

    -- * Request Lenses
    , piPayload
    , piFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.properties.insert@ method which the
-- 'PropertiesInsert' request conforms to.
type PropertiesInsertResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "fileId" Text :>
             "properties" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Property :> Post '[JSON] Property

-- | Adds a property to a file.
--
-- /See:/ 'propertiesInsert' smart constructor.
data PropertiesInsert = PropertiesInsert
    { _piPayload :: !Property
    , _piFileId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piPayload'
--
-- * 'piFileId'
propertiesInsert
    :: Property -- ^ 'piPayload'
    -> Text -- ^ 'piFileId'
    -> PropertiesInsert
propertiesInsert pPiPayload_ pPiFileId_ =
    PropertiesInsert
    { _piPayload = pPiPayload_
    , _piFileId = pPiFileId_
    }

-- | Multipart request metadata.
piPayload :: Lens' PropertiesInsert Property
piPayload
  = lens _piPayload (\ s a -> s{_piPayload = a})

-- | The ID of the file.
piFileId :: Lens' PropertiesInsert Text
piFileId = lens _piFileId (\ s a -> s{_piFileId = a})

instance GoogleRequest PropertiesInsert where
        type Rs PropertiesInsert = Property
        type Scopes PropertiesInsert =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.metadata"]
        requestClient PropertiesInsert{..}
          = go _piFileId (Just AltJSON) _piPayload driveService
          where go
                  = buildClient
                      (Proxy :: Proxy PropertiesInsertResource)
                      mempty
