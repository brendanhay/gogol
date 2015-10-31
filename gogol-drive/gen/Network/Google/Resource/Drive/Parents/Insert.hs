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
-- Module      : Network.Google.Resource.Drive.Parents.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a parent folder for a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.parents.insert@.
module Network.Google.Resource.Drive.Parents.Insert
    (
    -- * REST Resource
      ParentsInsertResource

    -- * Creating a Request
    , parentsInsert
    , ParentsInsert

    -- * Request Lenses
    , paraPayload
    , paraFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.parents.insert@ method which the
-- 'ParentsInsert' request conforms to.
type ParentsInsertResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "fileId" Text :>
             "parents" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] ParentReference :>
                   Post '[JSON] ParentReference

-- | Adds a parent folder for a file.
--
-- /See:/ 'parentsInsert' smart constructor.
data ParentsInsert = ParentsInsert
    { _paraPayload :: !ParentReference
    , _paraFileId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paraPayload'
--
-- * 'paraFileId'
parentsInsert
    :: ParentReference -- ^ 'paraPayload'
    -> Text -- ^ 'paraFileId'
    -> ParentsInsert
parentsInsert pParaPayload_ pParaFileId_ =
    ParentsInsert
    { _paraPayload = pParaPayload_
    , _paraFileId = pParaFileId_
    }

-- | Multipart request metadata.
paraPayload :: Lens' ParentsInsert ParentReference
paraPayload
  = lens _paraPayload (\ s a -> s{_paraPayload = a})

-- | The ID of the file.
paraFileId :: Lens' ParentsInsert Text
paraFileId
  = lens _paraFileId (\ s a -> s{_paraFileId = a})

instance GoogleRequest ParentsInsert where
        type Rs ParentsInsert = ParentReference
        type Scopes ParentsInsert =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient ParentsInsert{..}
          = go _paraFileId (Just AltJSON) _paraPayload
              driveService
          where go
                  = buildClient (Proxy :: Proxy ParentsInsertResource)
                      mempty
