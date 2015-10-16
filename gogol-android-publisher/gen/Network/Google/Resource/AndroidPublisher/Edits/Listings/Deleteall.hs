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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Listings.Deleteall
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes all localized listings from an edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsListingsDeleteall@.
module Network.Google.Resource.AndroidPublisher.Edits.Listings.Deleteall
    (
    -- * REST Resource
      EditsListingsDeleteallResource

    -- * Creating a Request
    , editsListingsDeleteall'
    , EditsListingsDeleteall'

    -- * Request Lenses
    , ediPackageName
    , ediEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsListingsDeleteall@ method which the
-- 'EditsListingsDeleteall'' request conforms to.
type EditsListingsDeleteallResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes all localized listings from an edit.
--
-- /See:/ 'editsListingsDeleteall'' smart constructor.
data EditsListingsDeleteall' = EditsListingsDeleteall'
    { _ediPackageName :: !Text
    , _ediEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsListingsDeleteall'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ediPackageName'
--
-- * 'ediEditId'
editsListingsDeleteall'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsListingsDeleteall'
editsListingsDeleteall' pEdiPackageName_ pEdiEditId_ =
    EditsListingsDeleteall'
    { _ediPackageName = pEdiPackageName_
    , _ediEditId = pEdiEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ediPackageName :: Lens' EditsListingsDeleteall' Text
ediPackageName
  = lens _ediPackageName
      (\ s a -> s{_ediPackageName = a})

-- | Unique identifier for this edit.
ediEditId :: Lens' EditsListingsDeleteall' Text
ediEditId
  = lens _ediEditId (\ s a -> s{_ediEditId = a})

instance GoogleRequest EditsListingsDeleteall' where
        type Rs EditsListingsDeleteall' = ()
        requestClient EditsListingsDeleteall'{..}
          = go _ediPackageName _ediEditId (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsListingsDeleteallResource)
                      mempty
