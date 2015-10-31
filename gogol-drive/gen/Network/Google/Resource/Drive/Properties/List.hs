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
-- Module      : Network.Google.Resource.Drive.Properties.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a file\'s properties.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.properties.list@.
module Network.Google.Resource.Drive.Properties.List
    (
    -- * REST Resource
      PropertiesListResource

    -- * Creating a Request
    , propertiesList
    , PropertiesList

    -- * Request Lenses
    , proFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.properties.list@ method which the
-- 'PropertiesList' request conforms to.
type PropertiesListResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "fileId" Text :>
             "properties" :>
               QueryParam "alt" AltJSON :> Get '[JSON] PropertyList

-- | Lists a file\'s properties.
--
-- /See:/ 'propertiesList' smart constructor.
newtype PropertiesList = PropertiesList
    { _proFileId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proFileId'
propertiesList
    :: Text -- ^ 'proFileId'
    -> PropertiesList
propertiesList pProFileId_ =
    PropertiesList
    { _proFileId = pProFileId_
    }

-- | The ID of the file.
proFileId :: Lens' PropertiesList Text
proFileId
  = lens _proFileId (\ s a -> s{_proFileId = a})

instance GoogleRequest PropertiesList where
        type Rs PropertiesList = PropertyList
        type Scopes PropertiesList =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.metadata",
               "https://www.googleapis.com/auth/drive.metadata.readonly",
               "https://www.googleapis.com/auth/drive.photos.readonly",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient PropertiesList{..}
          = go _proFileId (Just AltJSON) driveService
          where go
                  = buildClient (Proxy :: Proxy PropertiesListResource)
                      mempty
