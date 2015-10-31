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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Listings.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates a localized store listing. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.listings.patch@.
module Network.Google.Resource.AndroidPublisher.Edits.Listings.Patch
    (
    -- * REST Resource
      EditsListingsPatchResource

    -- * Creating a Request
    , editsListingsPatch
    , EditsListingsPatch

    -- * Request Lenses
    , elpPackageName
    , elpPayload
    , elpLanguage
    , elpEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.listings.patch@ method which the
-- 'EditsListingsPatch' request conforms to.
type EditsListingsPatchResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   Capture "language" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Listing :> Patch '[JSON] Listing

-- | Creates or updates a localized store listing. This method supports patch
-- semantics.
--
-- /See:/ 'editsListingsPatch' smart constructor.
data EditsListingsPatch = EditsListingsPatch
    { _elpPackageName :: !Text
    , _elpPayload     :: !Listing
    , _elpLanguage    :: !Text
    , _elpEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsListingsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elpPackageName'
--
-- * 'elpPayload'
--
-- * 'elpLanguage'
--
-- * 'elpEditId'
editsListingsPatch
    :: Text -- ^ 'elpPackageName'
    -> Listing -- ^ 'elpPayload'
    -> Text -- ^ 'elpLanguage'
    -> Text -- ^ 'elpEditId'
    -> EditsListingsPatch
editsListingsPatch pElpPackageName_ pElpPayload_ pElpLanguage_ pElpEditId_ =
    EditsListingsPatch
    { _elpPackageName = pElpPackageName_
    , _elpPayload = pElpPayload_
    , _elpLanguage = pElpLanguage_
    , _elpEditId = pElpEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
elpPackageName :: Lens' EditsListingsPatch Text
elpPackageName
  = lens _elpPackageName
      (\ s a -> s{_elpPackageName = a})

-- | Multipart request metadata.
elpPayload :: Lens' EditsListingsPatch Listing
elpPayload
  = lens _elpPayload (\ s a -> s{_elpPayload = a})

-- | The language code (a BCP-47 language tag) of the localized listing to
-- read or modify. For example, to select Austrian German, pass \"de-AT\".
elpLanguage :: Lens' EditsListingsPatch Text
elpLanguage
  = lens _elpLanguage (\ s a -> s{_elpLanguage = a})

-- | Unique identifier for this edit.
elpEditId :: Lens' EditsListingsPatch Text
elpEditId
  = lens _elpEditId (\ s a -> s{_elpEditId = a})

instance GoogleRequest EditsListingsPatch where
        type Rs EditsListingsPatch = Listing
        type Scopes EditsListingsPatch =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsListingsPatch{..}
          = go _elpPackageName _elpEditId _elpLanguage
              (Just AltJSON)
              _elpPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsListingsPatchResource)
                      mempty
