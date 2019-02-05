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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Details.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates app details for this edit. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.details.patch@.
module Network.Google.Resource.AndroidPublisher.Edits.Details.Patch
    (
    -- * REST Resource
      EditsDetailsPatchResource

    -- * Creating a Request
    , editsDetailsPatch
    , EditsDetailsPatch

    -- * Request Lenses
    , edpPackageName
    , edpPayload
    , edpEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.details.patch@ method which the
-- 'EditsDetailsPatch' request conforms to.
type EditsDetailsPatchResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "details" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AppDetails :>
                       Patch '[JSON] AppDetails

-- | Updates app details for this edit. This method supports patch semantics.
--
-- /See:/ 'editsDetailsPatch' smart constructor.
data EditsDetailsPatch = EditsDetailsPatch'
    { _edpPackageName :: !Text
    , _edpPayload     :: !AppDetails
    , _edpEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsDetailsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edpPackageName'
--
-- * 'edpPayload'
--
-- * 'edpEditId'
editsDetailsPatch
    :: Text -- ^ 'edpPackageName'
    -> AppDetails -- ^ 'edpPayload'
    -> Text -- ^ 'edpEditId'
    -> EditsDetailsPatch
editsDetailsPatch pEdpPackageName_ pEdpPayload_ pEdpEditId_ =
    EditsDetailsPatch'
    { _edpPackageName = pEdpPackageName_
    , _edpPayload = pEdpPayload_
    , _edpEditId = pEdpEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
edpPackageName :: Lens' EditsDetailsPatch Text
edpPackageName
  = lens _edpPackageName
      (\ s a -> s{_edpPackageName = a})

-- | Multipart request metadata.
edpPayload :: Lens' EditsDetailsPatch AppDetails
edpPayload
  = lens _edpPayload (\ s a -> s{_edpPayload = a})

-- | Unique identifier for this edit.
edpEditId :: Lens' EditsDetailsPatch Text
edpEditId
  = lens _edpEditId (\ s a -> s{_edpEditId = a})

instance GoogleRequest EditsDetailsPatch where
        type Rs EditsDetailsPatch = AppDetails
        type Scopes EditsDetailsPatch =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsDetailsPatch'{..}
          = go _edpPackageName _edpEditId (Just AltJSON)
              _edpPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsDetailsPatchResource)
                      mempty
