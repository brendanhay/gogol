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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Listings.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all of the localized store listings attached to this edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.listings.list@.
module Network.Google.Resource.AndroidPublisher.Edits.Listings.List
    (
    -- * REST Resource
      EditsListingsListResource

    -- * Creating a Request
    , editsListingsList'
    , EditsListingsList'

    -- * Request Lenses
    , ellPackageName
    , ellEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.listings.list@ method which the
-- 'EditsListingsList'' request conforms to.
type EditsListingsListResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] ListingsListResponse

-- | Returns all of the localized store listings attached to this edit.
--
-- /See:/ 'editsListingsList'' smart constructor.
data EditsListingsList' = EditsListingsList'
    { _ellPackageName :: !Text
    , _ellEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsListingsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ellPackageName'
--
-- * 'ellEditId'
editsListingsList'
    :: Text -- ^ 'ellPackageName'
    -> Text -- ^ 'ellEditId'
    -> EditsListingsList'
editsListingsList' pEllPackageName_ pEllEditId_ =
    EditsListingsList'
    { _ellPackageName = pEllPackageName_
    , _ellEditId = pEllEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ellPackageName :: Lens' EditsListingsList' Text
ellPackageName
  = lens _ellPackageName
      (\ s a -> s{_ellPackageName = a})

-- | Unique identifier for this edit.
ellEditId :: Lens' EditsListingsList' Text
ellEditId
  = lens _ellEditId (\ s a -> s{_ellEditId = a})

instance GoogleRequest EditsListingsList' where
        type Rs EditsListingsList' = ListingsListResponse
        requestClient EditsListingsList'{..}
          = go _ellPackageName _ellEditId (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsListingsListResource)
                      mempty
