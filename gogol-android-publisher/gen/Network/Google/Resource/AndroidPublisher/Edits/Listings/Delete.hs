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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Listings.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified localized store listing from an edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.listings.delete@.
module Network.Google.Resource.AndroidPublisher.Edits.Listings.Delete
    (
    -- * REST Resource
      EditsListingsDeleteResource

    -- * Creating a Request
    , editsListingsDelete
    , EditsListingsDelete

    -- * Request Lenses
    , eldPackageName
    , eldLanguage
    , eldEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.listings.delete@ method which the
-- 'EditsListingsDelete' request conforms to.
type EditsListingsDeleteResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   Capture "language" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified localized store listing from an edit.
--
-- /See:/ 'editsListingsDelete' smart constructor.
data EditsListingsDelete = EditsListingsDelete'
    { _eldPackageName :: !Text
    , _eldLanguage    :: !Text
    , _eldEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsListingsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eldPackageName'
--
-- * 'eldLanguage'
--
-- * 'eldEditId'
editsListingsDelete
    :: Text -- ^ 'eldPackageName'
    -> Text -- ^ 'eldLanguage'
    -> Text -- ^ 'eldEditId'
    -> EditsListingsDelete
editsListingsDelete pEldPackageName_ pEldLanguage_ pEldEditId_ =
    EditsListingsDelete'
    { _eldPackageName = pEldPackageName_
    , _eldLanguage = pEldLanguage_
    , _eldEditId = pEldEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eldPackageName :: Lens' EditsListingsDelete Text
eldPackageName
  = lens _eldPackageName
      (\ s a -> s{_eldPackageName = a})

-- | The language code (a BCP-47 language tag) of the localized listing to
-- read or modify. For example, to select Austrian German, pass \"de-AT\".
eldLanguage :: Lens' EditsListingsDelete Text
eldLanguage
  = lens _eldLanguage (\ s a -> s{_eldLanguage = a})

-- | Unique identifier for this edit.
eldEditId :: Lens' EditsListingsDelete Text
eldEditId
  = lens _eldEditId (\ s a -> s{_eldEditId = a})

instance GoogleRequest EditsListingsDelete where
        type Rs EditsListingsDelete = ()
        type Scopes EditsListingsDelete =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsListingsDelete'{..}
          = go _eldPackageName _eldEditId _eldLanguage
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsListingsDeleteResource)
                      mempty
