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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a file\'s properties.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePropertiesList@.
module Network.Google.Resource.Drive.Properties.List
    (
    -- * REST Resource
      PropertiesListResource

    -- * Creating a Request
    , propertiesList'
    , PropertiesList'

    -- * Request Lenses
    , plFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePropertiesList@ method which the
-- 'PropertiesList'' request conforms to.
type PropertiesListResource =
     "files" :>
       Capture "fileId" Text :>
         "properties" :>
           QueryParam "alt" AltJSON :> Get '[JSON] PropertyList

-- | Lists a file\'s properties.
--
-- /See:/ 'propertiesList'' smart constructor.
newtype PropertiesList' = PropertiesList'
    { _plFileId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plFileId'
propertiesList'
    :: Text -- ^ 'fileId'
    -> PropertiesList'
propertiesList' pPlFileId_ =
    PropertiesList'
    { _plFileId = pPlFileId_
    }

-- | The ID of the file.
plFileId :: Lens' PropertiesList' Text
plFileId = lens _plFileId (\ s a -> s{_plFileId = a})

instance GoogleRequest PropertiesList' where
        type Rs PropertiesList' = PropertyList
        requestClient PropertiesList'{..}
          = go _plFileId (Just AltJSON) driveService
          where go
                  = buildClient (Proxy :: Proxy PropertiesListResource)
                      mempty
