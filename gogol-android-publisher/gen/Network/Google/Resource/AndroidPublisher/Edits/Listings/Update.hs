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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Listings.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates a localized store listing.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsListingsUpdate@.
module Network.Google.Resource.AndroidPublisher.Edits.Listings.Update
    (
    -- * REST Resource
      EditsListingsUpdateResource

    -- * Creating a Request
    , editsListingsUpdate'
    , EditsListingsUpdate'

    -- * Request Lenses
    , eluPackageName
    , eluPayload
    , eluLanguage
    , eluEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsListingsUpdate@ method which the
-- 'EditsListingsUpdate'' request conforms to.
type EditsListingsUpdateResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             Capture "language" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Listing :> Put '[JSON] Listing

-- | Creates or updates a localized store listing.
--
-- /See:/ 'editsListingsUpdate'' smart constructor.
data EditsListingsUpdate' = EditsListingsUpdate'
    { _eluPackageName :: !Text
    , _eluPayload     :: !Listing
    , _eluLanguage    :: !Text
    , _eluEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsListingsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eluPackageName'
--
-- * 'eluPayload'
--
-- * 'eluLanguage'
--
-- * 'eluEditId'
editsListingsUpdate'
    :: Text -- ^ 'packageName'
    -> Listing -- ^ 'payload'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsListingsUpdate'
editsListingsUpdate' pEluPackageName_ pEluPayload_ pEluLanguage_ pEluEditId_ =
    EditsListingsUpdate'
    { _eluPackageName = pEluPackageName_
    , _eluPayload = pEluPayload_
    , _eluLanguage = pEluLanguage_
    , _eluEditId = pEluEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eluPackageName :: Lens' EditsListingsUpdate' Text
eluPackageName
  = lens _eluPackageName
      (\ s a -> s{_eluPackageName = a})

-- | Multipart request metadata.
eluPayload :: Lens' EditsListingsUpdate' Listing
eluPayload
  = lens _eluPayload (\ s a -> s{_eluPayload = a})

-- | The language code (a BCP-47 language tag) of the localized listing to
-- read or modify. For example, to select Austrian German, pass \"de-AT\".
eluLanguage :: Lens' EditsListingsUpdate' Text
eluLanguage
  = lens _eluLanguage (\ s a -> s{_eluLanguage = a})

-- | Unique identifier for this edit.
eluEditId :: Lens' EditsListingsUpdate' Text
eluEditId
  = lens _eluEditId (\ s a -> s{_eluEditId = a})

instance GoogleRequest EditsListingsUpdate' where
        type Rs EditsListingsUpdate' = Listing
        requestClient EditsListingsUpdate'{..}
          = go _eluPackageName _eluEditId _eluLanguage
              (Just AltJSON)
              _eluPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsListingsUpdateResource)
                      mempty
