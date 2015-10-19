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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a property to a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePropertiesInsert@.
module Network.Google.Resource.Drive.Properties.Insert
    (
    -- * REST Resource
      PropertiesInsertResource

    -- * Creating a Request
    , propertiesInsert'
    , PropertiesInsert'

    -- * Request Lenses
    , proPayload
    , proFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePropertiesInsert@ method which the
-- 'PropertiesInsert'' request conforms to.
type PropertiesInsertResource =
     "files" :>
       Capture "fileId" Text :>
         "properties" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Property :> Post '[JSON] Property

-- | Adds a property to a file.
--
-- /See:/ 'propertiesInsert'' smart constructor.
data PropertiesInsert' = PropertiesInsert'
    { _proPayload :: !Property
    , _proFileId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proPayload'
--
-- * 'proFileId'
propertiesInsert'
    :: Property -- ^ 'payload'
    -> Text -- ^ 'fileId'
    -> PropertiesInsert'
propertiesInsert' pProPayload_ pProFileId_ =
    PropertiesInsert'
    { _proPayload = pProPayload_
    , _proFileId = pProFileId_
    }

-- | Multipart request metadata.
proPayload :: Lens' PropertiesInsert' Property
proPayload
  = lens _proPayload (\ s a -> s{_proPayload = a})

-- | The ID of the file.
proFileId :: Lens' PropertiesInsert' Text
proFileId
  = lens _proFileId (\ s a -> s{_proFileId = a})

instance GoogleRequest PropertiesInsert' where
        type Rs PropertiesInsert' = Property
        requestClient PropertiesInsert'{..}
          = go _proFileId (Just AltJSON) _proPayload
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy PropertiesInsertResource)
                      mempty
