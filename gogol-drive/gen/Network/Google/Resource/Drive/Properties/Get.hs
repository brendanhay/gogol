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
-- Module      : Network.Google.Resource.Drive.Properties.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a property by its key.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.properties.get@.
module Network.Google.Resource.Drive.Properties.Get
    (
    -- * REST Resource
      PropertiesGetResource

    -- * Creating a Request
    , propertiesGet
    , PropertiesGet

    -- * Request Lenses
    , pgPropertyKey
    , pgVisibility
    , pgFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.properties.get@ method which the
-- 'PropertiesGet' request conforms to.
type PropertiesGetResource =
     "files" :>
       Capture "fileId" Text :>
         "properties" :>
           Capture "propertyKey" Text :>
             QueryParam "visibility" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] Property

-- | Gets a property by its key.
--
-- /See:/ 'propertiesGet' smart constructor.
data PropertiesGet = PropertiesGet
    { _pgPropertyKey :: !Text
    , _pgVisibility  :: !Text
    , _pgFileId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgPropertyKey'
--
-- * 'pgVisibility'
--
-- * 'pgFileId'
propertiesGet
    :: Text -- ^ 'pgPropertyKey'
    -> Text -- ^ 'pgFileId'
    -> PropertiesGet
propertiesGet pPgPropertyKey_ pPgFileId_ =
    PropertiesGet
    { _pgPropertyKey = pPgPropertyKey_
    , _pgVisibility = "private"
    , _pgFileId = pPgFileId_
    }

-- | The key of the property.
pgPropertyKey :: Lens' PropertiesGet Text
pgPropertyKey
  = lens _pgPropertyKey
      (\ s a -> s{_pgPropertyKey = a})

-- | The visibility of the property.
pgVisibility :: Lens' PropertiesGet Text
pgVisibility
  = lens _pgVisibility (\ s a -> s{_pgVisibility = a})

-- | The ID of the file.
pgFileId :: Lens' PropertiesGet Text
pgFileId = lens _pgFileId (\ s a -> s{_pgFileId = a})

instance GoogleRequest PropertiesGet where
        type Rs PropertiesGet = Property
        requestClient PropertiesGet{..}
          = go _pgFileId _pgPropertyKey (Just _pgVisibility)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy PropertiesGetResource)
                      mempty
