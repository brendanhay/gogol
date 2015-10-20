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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Commit
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Commits\/applies the changes made in this edit back to the app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.commit@.
module Network.Google.Resource.AndroidPublisher.Edits.Commit
    (
    -- * REST Resource
      EditsCommitResource

    -- * Creating a Request
    , editsCommit
    , EditsCommit

    -- * Request Lenses
    , ecPackageName
    , ecEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.commit@ method which the
-- 'EditsCommit' request conforms to.
type EditsCommitResource =
     Capture "packageName" Text :>
       "edits" :>
         CaptureMode "editId" "commit" Text :>
           QueryParam "alt" AltJSON :> Post '[JSON] AppEdit

-- | Commits\/applies the changes made in this edit back to the app.
--
-- /See:/ 'editsCommit' smart constructor.
data EditsCommit = EditsCommit
    { _ecPackageName :: !Text
    , _ecEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsCommit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecPackageName'
--
-- * 'ecEditId'
editsCommit
    :: Text -- ^ 'ecPackageName'
    -> Text -- ^ 'ecEditId'
    -> EditsCommit
editsCommit pEcPackageName_ pEcEditId_ =
    EditsCommit
    { _ecPackageName = pEcPackageName_
    , _ecEditId = pEcEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ecPackageName :: Lens' EditsCommit Text
ecPackageName
  = lens _ecPackageName
      (\ s a -> s{_ecPackageName = a})

-- | Unique identifier for this edit.
ecEditId :: Lens' EditsCommit Text
ecEditId = lens _ecEditId (\ s a -> s{_ecEditId = a})

instance GoogleRequest EditsCommit where
        type Rs EditsCommit = AppEdit
        requestClient EditsCommit{..}
          = go _ecPackageName _ecEditId (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy EditsCommitResource)
                      mempty
