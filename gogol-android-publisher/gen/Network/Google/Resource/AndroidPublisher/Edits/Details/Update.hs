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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Details.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates app details for this edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.details.update@.
module Network.Google.Resource.AndroidPublisher.Edits.Details.Update
    (
    -- * REST Resource
      EditsDetailsUpdateResource

    -- * Creating a Request
    , editsDetailsUpdate
    , EditsDetailsUpdate

    -- * Request Lenses
    , eduPackageName
    , eduPayload
    , eduEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.details.update@ method which the
-- 'EditsDetailsUpdate' request conforms to.
type EditsDetailsUpdateResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "details" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AppDetails :> Put '[JSON] AppDetails

-- | Updates app details for this edit.
--
-- /See:/ 'editsDetailsUpdate' smart constructor.
data EditsDetailsUpdate = EditsDetailsUpdate'
    { _eduPackageName :: !Text
    , _eduPayload     :: !AppDetails
    , _eduEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsDetailsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eduPackageName'
--
-- * 'eduPayload'
--
-- * 'eduEditId'
editsDetailsUpdate
    :: Text -- ^ 'eduPackageName'
    -> AppDetails -- ^ 'eduPayload'
    -> Text -- ^ 'eduEditId'
    -> EditsDetailsUpdate
editsDetailsUpdate pEduPackageName_ pEduPayload_ pEduEditId_ =
    EditsDetailsUpdate'
    { _eduPackageName = pEduPackageName_
    , _eduPayload = pEduPayload_
    , _eduEditId = pEduEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eduPackageName :: Lens' EditsDetailsUpdate Text
eduPackageName
  = lens _eduPackageName
      (\ s a -> s{_eduPackageName = a})

-- | Multipart request metadata.
eduPayload :: Lens' EditsDetailsUpdate AppDetails
eduPayload
  = lens _eduPayload (\ s a -> s{_eduPayload = a})

-- | Unique identifier for this edit.
eduEditId :: Lens' EditsDetailsUpdate Text
eduEditId
  = lens _eduEditId (\ s a -> s{_eduEditId = a})

instance GoogleRequest EditsDetailsUpdate where
        type Rs EditsDetailsUpdate = AppDetails
        type Scopes EditsDetailsUpdate =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsDetailsUpdate'{..}
          = go _eduPackageName _eduEditId (Just AltJSON)
              _eduPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsDetailsUpdateResource)
                      mempty
