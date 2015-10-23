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
-- Module      : Network.Google.Resource.Drive.Properties.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a property.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.properties.delete@.
module Network.Google.Resource.Drive.Properties.Delete
    (
    -- * REST Resource
      PropertiesDeleteResource

    -- * Creating a Request
    , propertiesDelete
    , PropertiesDelete

    -- * Request Lenses
    , pdPropertyKey
    , pdVisibility
    , pdFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.properties.delete@ method which the
-- 'PropertiesDelete' request conforms to.
type PropertiesDeleteResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "fileId" Text :>
             "properties" :>
               Capture "propertyKey" Text :>
                 QueryParam "visibility" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a property.
--
-- /See:/ 'propertiesDelete' smart constructor.
data PropertiesDelete = PropertiesDelete
    { _pdPropertyKey :: !Text
    , _pdVisibility  :: !Text
    , _pdFileId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdPropertyKey'
--
-- * 'pdVisibility'
--
-- * 'pdFileId'
propertiesDelete
    :: Text -- ^ 'pdPropertyKey'
    -> Text -- ^ 'pdFileId'
    -> PropertiesDelete
propertiesDelete pPdPropertyKey_ pPdFileId_ =
    PropertiesDelete
    { _pdPropertyKey = pPdPropertyKey_
    , _pdVisibility = "private"
    , _pdFileId = pPdFileId_
    }

-- | The key of the property.
pdPropertyKey :: Lens' PropertiesDelete Text
pdPropertyKey
  = lens _pdPropertyKey
      (\ s a -> s{_pdPropertyKey = a})

-- | The visibility of the property.
pdVisibility :: Lens' PropertiesDelete Text
pdVisibility
  = lens _pdVisibility (\ s a -> s{_pdVisibility = a})

-- | The ID of the file.
pdFileId :: Lens' PropertiesDelete Text
pdFileId = lens _pdFileId (\ s a -> s{_pdFileId = a})

instance GoogleRequest PropertiesDelete where
        type Rs PropertiesDelete = ()
        requestClient PropertiesDelete{..}
          = go _pdFileId _pdPropertyKey (Just _pdVisibility)
              (Just AltJSON)
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy PropertiesDeleteResource)
                      mempty
