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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Listings.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Fetches information about a localized store listing.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsListingsGet@.
module Network.Google.Resource.AndroidPublisher.Edits.Listings.Get
    (
    -- * REST Resource
      EditsListingsGetResource

    -- * Creating a Request
    , editsListingsGet'
    , EditsListingsGet'

    -- * Request Lenses
    , elgPackageName
    , elgLanguage
    , elgEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsListingsGet@ method which the
-- 'EditsListingsGet'' request conforms to.
type EditsListingsGetResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             Capture "language" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] Listing

-- | Fetches information about a localized store listing.
--
-- /See:/ 'editsListingsGet'' smart constructor.
data EditsListingsGet' = EditsListingsGet'
    { _elgPackageName :: !Text
    , _elgLanguage    :: !Text
    , _elgEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsListingsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elgPackageName'
--
-- * 'elgLanguage'
--
-- * 'elgEditId'
editsListingsGet'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsListingsGet'
editsListingsGet' pElgPackageName_ pElgLanguage_ pElgEditId_ =
    EditsListingsGet'
    { _elgPackageName = pElgPackageName_
    , _elgLanguage = pElgLanguage_
    , _elgEditId = pElgEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
elgPackageName :: Lens' EditsListingsGet' Text
elgPackageName
  = lens _elgPackageName
      (\ s a -> s{_elgPackageName = a})

-- | The language code (a BCP-47 language tag) of the localized listing to
-- read or modify. For example, to select Austrian German, pass \"de-AT\".
elgLanguage :: Lens' EditsListingsGet' Text
elgLanguage
  = lens _elgLanguage (\ s a -> s{_elgLanguage = a})

-- | Unique identifier for this edit.
elgEditId :: Lens' EditsListingsGet' Text
elgEditId
  = lens _elgEditId (\ s a -> s{_elgEditId = a})

instance GoogleRequest EditsListingsGet' where
        type Rs EditsListingsGet' = Listing
        requestClient EditsListingsGet'{..}
          = go _elgPackageName _elgEditId _elgLanguage
              (Just AltJSON)
              androidPublisher
          where go
                  = buildClient
                      (Proxy :: Proxy EditsListingsGetResource)
                      mempty
