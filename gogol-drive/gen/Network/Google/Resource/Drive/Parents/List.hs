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
-- Module      : Network.Google.Resource.Drive.Parents.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a file\'s parents.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveParentsList@.
module Network.Google.Resource.Drive.Parents.List
    (
    -- * REST Resource
      ParentsListResource

    -- * Creating a Request
    , parentsList'
    , ParentsList'

    -- * Request Lenses
    , pFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveParentsList@ method which the
-- 'ParentsList'' request conforms to.
type ParentsListResource =
     "files" :>
       Capture "fileId" Text :>
         "parents" :>
           QueryParam "alt" AltJSON :> Get '[JSON] ParentList

-- | Lists a file\'s parents.
--
-- /See:/ 'parentsList'' smart constructor.
newtype ParentsList' = ParentsList'
    { _pFileId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pFileId'
parentsList'
    :: Text -- ^ 'fileId'
    -> ParentsList'
parentsList' pPFileId_ =
    ParentsList'
    { _pFileId = pPFileId_
    }

-- | The ID of the file.
pFileId :: Lens' ParentsList' Text
pFileId = lens _pFileId (\ s a -> s{_pFileId = a})

instance GoogleRequest ParentsList' where
        type Rs ParentsList' = ParentList
        requestClient ParentsList'{..}
          = go _pFileId (Just AltJSON) driveService
          where go
                  = buildClient (Proxy :: Proxy ParentsListResource)
                      mempty
