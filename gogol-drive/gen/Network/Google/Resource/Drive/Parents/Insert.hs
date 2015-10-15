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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a parent folder for a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveParentsInsert@.
module Network.Google.Resource.Drive.Parents.Insert
    (
    -- * REST Resource
      ParentsInsertResource

    -- * Creating a Request
    , parentsInsert'
    , ParentsInsert'

    -- * Request Lenses
    , piiPayload
    , piiFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveParentsInsert@ method which the
-- 'ParentsInsert'' request conforms to.
type ParentsInsertResource =
     "files" :>
       Capture "fileId" Text :>
         "parents" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] ParentReference :>
               Post '[JSON] ParentReference

-- | Adds a parent folder for a file.
--
-- /See:/ 'parentsInsert'' smart constructor.
data ParentsInsert' = ParentsInsert'
    { _piiPayload :: !ParentReference
    , _piiFileId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piiPayload'
--
-- * 'piiFileId'
parentsInsert'
    :: ParentReference -- ^ 'payload'
    -> Text -- ^ 'fileId'
    -> ParentsInsert'
parentsInsert' pPiiPayload_ pPiiFileId_ =
    ParentsInsert'
    { _piiPayload = pPiiPayload_
    , _piiFileId = pPiiFileId_
    }

-- | Multipart request metadata.
piiPayload :: Lens' ParentsInsert' ParentReference
piiPayload
  = lens _piiPayload (\ s a -> s{_piiPayload = a})

-- | The ID of the file.
piiFileId :: Lens' ParentsInsert' Text
piiFileId
  = lens _piiFileId (\ s a -> s{_piiFileId = a})

instance GoogleRequest ParentsInsert' where
        type Rs ParentsInsert' = ParentReference
        requestClient ParentsInsert'{..}
          = go _piiFileId (Just AltJSON) _piiPayload drive
          where go
                  = buildClient (Proxy :: Proxy ParentsInsertResource)
                      mempty
