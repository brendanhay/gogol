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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.APKListings.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates or creates the APK-specific localized listing for a specified
-- APK and language code. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.apklistings.patch@.
module Network.Google.Resource.AndroidPublisher.Edits.APKListings.Patch
    (
    -- * REST Resource
      EditsAPKListingsPatchResource

    -- * Creating a Request
    , editsAPKListingsPatch
    , EditsAPKListingsPatch

    -- * Request Lenses
    , eapklpPackageName
    , eapklpAPKVersionCode
    , eapklpPayload
    , eapklpLanguage
    , eapklpEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.apklistings.patch@ method which the
-- 'EditsAPKListingsPatch' request conforms to.
type EditsAPKListingsPatchResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "listings" :>
                 Capture "language" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] APKListing :>
                       Patch '[JSON] APKListing

-- | Updates or creates the APK-specific localized listing for a specified
-- APK and language code. This method supports patch semantics.
--
-- /See:/ 'editsAPKListingsPatch' smart constructor.
data EditsAPKListingsPatch = EditsAPKListingsPatch
    { _eapklpPackageName    :: !Text
    , _eapklpAPKVersionCode :: !Int32
    , _eapklpPayload        :: !APKListing
    , _eapklpLanguage       :: !Text
    , _eapklpEditId         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsAPKListingsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapklpPackageName'
--
-- * 'eapklpAPKVersionCode'
--
-- * 'eapklpPayload'
--
-- * 'eapklpLanguage'
--
-- * 'eapklpEditId'
editsAPKListingsPatch
    :: Text -- ^ 'eapklpPackageName'
    -> Int32 -- ^ 'eapklpAPKVersionCode'
    -> APKListing -- ^ 'eapklpPayload'
    -> Text -- ^ 'eapklpLanguage'
    -> Text -- ^ 'eapklpEditId'
    -> EditsAPKListingsPatch
editsAPKListingsPatch pEapklpPackageName_ pEapklpAPKVersionCode_ pEapklpPayload_ pEapklpLanguage_ pEapklpEditId_ =
    EditsAPKListingsPatch
    { _eapklpPackageName = pEapklpPackageName_
    , _eapklpAPKVersionCode = pEapklpAPKVersionCode_
    , _eapklpPayload = pEapklpPayload_
    , _eapklpLanguage = pEapklpLanguage_
    , _eapklpEditId = pEapklpEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eapklpPackageName :: Lens' EditsAPKListingsPatch Text
eapklpPackageName
  = lens _eapklpPackageName
      (\ s a -> s{_eapklpPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
eapklpAPKVersionCode :: Lens' EditsAPKListingsPatch Int32
eapklpAPKVersionCode
  = lens _eapklpAPKVersionCode
      (\ s a -> s{_eapklpAPKVersionCode = a})

-- | Multipart request metadata.
eapklpPayload :: Lens' EditsAPKListingsPatch APKListing
eapklpPayload
  = lens _eapklpPayload
      (\ s a -> s{_eapklpPayload = a})

-- | The language code (a BCP-47 language tag) of the APK-specific localized
-- listing to read or modify. For example, to select Austrian German, pass
-- \"de-AT\".
eapklpLanguage :: Lens' EditsAPKListingsPatch Text
eapklpLanguage
  = lens _eapklpLanguage
      (\ s a -> s{_eapklpLanguage = a})

-- | Unique identifier for this edit.
eapklpEditId :: Lens' EditsAPKListingsPatch Text
eapklpEditId
  = lens _eapklpEditId (\ s a -> s{_eapklpEditId = a})

instance GoogleRequest EditsAPKListingsPatch where
        type Rs EditsAPKListingsPatch = APKListing
        requestClient EditsAPKListingsPatch{..}
          = go _eapklpPackageName _eapklpEditId
              _eapklpAPKVersionCode
              _eapklpLanguage
              (Just AltJSON)
              _eapklpPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsAPKListingsPatchResource)
                      mempty
