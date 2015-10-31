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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.APKListings.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the APK-specific localized listing for a specified APK and
-- language code.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.apklistings.delete@.
module Network.Google.Resource.AndroidPublisher.Edits.APKListings.Delete
    (
    -- * REST Resource
      EditsAPKListingsDeleteResource

    -- * Creating a Request
    , editsAPKListingsDelete
    , EditsAPKListingsDelete

    -- * Request Lenses
    , eapkldPackageName
    , eapkldAPKVersionCode
    , eapkldLanguage
    , eapkldEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.apklistings.delete@ method which the
-- 'EditsAPKListingsDelete' request conforms to.
type EditsAPKListingsDeleteResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   Capture "apkVersionCode" (Textual Int32) :>
                     "listings" :>
                       Capture "language" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the APK-specific localized listing for a specified APK and
-- language code.
--
-- /See:/ 'editsAPKListingsDelete' smart constructor.
data EditsAPKListingsDelete = EditsAPKListingsDelete
    { _eapkldPackageName    :: !Text
    , _eapkldAPKVersionCode :: !(Textual Int32)
    , _eapkldLanguage       :: !Text
    , _eapkldEditId         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsAPKListingsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapkldPackageName'
--
-- * 'eapkldAPKVersionCode'
--
-- * 'eapkldLanguage'
--
-- * 'eapkldEditId'
editsAPKListingsDelete
    :: Text -- ^ 'eapkldPackageName'
    -> Int32 -- ^ 'eapkldAPKVersionCode'
    -> Text -- ^ 'eapkldLanguage'
    -> Text -- ^ 'eapkldEditId'
    -> EditsAPKListingsDelete
editsAPKListingsDelete pEapkldPackageName_ pEapkldAPKVersionCode_ pEapkldLanguage_ pEapkldEditId_ =
    EditsAPKListingsDelete
    { _eapkldPackageName = pEapkldPackageName_
    , _eapkldAPKVersionCode = _Coerce # pEapkldAPKVersionCode_
    , _eapkldLanguage = pEapkldLanguage_
    , _eapkldEditId = pEapkldEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eapkldPackageName :: Lens' EditsAPKListingsDelete Text
eapkldPackageName
  = lens _eapkldPackageName
      (\ s a -> s{_eapkldPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
eapkldAPKVersionCode :: Lens' EditsAPKListingsDelete Int32
eapkldAPKVersionCode
  = lens _eapkldAPKVersionCode
      (\ s a -> s{_eapkldAPKVersionCode = a})
      . _Coerce

-- | The language code (a BCP-47 language tag) of the APK-specific localized
-- listing to read or modify. For example, to select Austrian German, pass
-- \"de-AT\".
eapkldLanguage :: Lens' EditsAPKListingsDelete Text
eapkldLanguage
  = lens _eapkldLanguage
      (\ s a -> s{_eapkldLanguage = a})

-- | Unique identifier for this edit.
eapkldEditId :: Lens' EditsAPKListingsDelete Text
eapkldEditId
  = lens _eapkldEditId (\ s a -> s{_eapkldEditId = a})

instance GoogleRequest EditsAPKListingsDelete where
        type Rs EditsAPKListingsDelete = ()
        type Scopes EditsAPKListingsDelete =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsAPKListingsDelete{..}
          = go _eapkldPackageName _eapkldEditId
              _eapkldAPKVersionCode
              _eapkldLanguage
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsAPKListingsDeleteResource)
                      mempty
