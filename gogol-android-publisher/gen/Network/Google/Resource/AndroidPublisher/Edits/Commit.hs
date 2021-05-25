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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Commits an app edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.commit@.
module Network.Google.Resource.AndroidPublisher.Edits.Commit
    (
    -- * REST Resource
      EditsCommitResource

    -- * Creating a Request
    , editsCommit
    , EditsCommit

    -- * Request Lenses
    , ecXgafv
    , ecUploadProtocol
    , ecPackageName
    , ecChangesNotSentForReview
    , ecAccessToken
    , ecUploadType
    , ecEditId
    , ecCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.commit@ method which the
-- 'EditsCommit' request conforms to.
type EditsCommitResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               CaptureMode "editId" "commit" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "changesNotSentForReview" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Post '[JSON] AppEdit

-- | Commits an app edit.
--
-- /See:/ 'editsCommit' smart constructor.
data EditsCommit =
  EditsCommit'
    { _ecXgafv :: !(Maybe Xgafv)
    , _ecUploadProtocol :: !(Maybe Text)
    , _ecPackageName :: !Text
    , _ecChangesNotSentForReview :: !(Maybe Bool)
    , _ecAccessToken :: !(Maybe Text)
    , _ecUploadType :: !(Maybe Text)
    , _ecEditId :: !Text
    , _ecCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsCommit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecXgafv'
--
-- * 'ecUploadProtocol'
--
-- * 'ecPackageName'
--
-- * 'ecChangesNotSentForReview'
--
-- * 'ecAccessToken'
--
-- * 'ecUploadType'
--
-- * 'ecEditId'
--
-- * 'ecCallback'
editsCommit
    :: Text -- ^ 'ecPackageName'
    -> Text -- ^ 'ecEditId'
    -> EditsCommit
editsCommit pEcPackageName_ pEcEditId_ =
  EditsCommit'
    { _ecXgafv = Nothing
    , _ecUploadProtocol = Nothing
    , _ecPackageName = pEcPackageName_
    , _ecChangesNotSentForReview = Nothing
    , _ecAccessToken = Nothing
    , _ecUploadType = Nothing
    , _ecEditId = pEcEditId_
    , _ecCallback = Nothing
    }


-- | V1 error format.
ecXgafv :: Lens' EditsCommit (Maybe Xgafv)
ecXgafv = lens _ecXgafv (\ s a -> s{_ecXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ecUploadProtocol :: Lens' EditsCommit (Maybe Text)
ecUploadProtocol
  = lens _ecUploadProtocol
      (\ s a -> s{_ecUploadProtocol = a})

-- | Package name of the app.
ecPackageName :: Lens' EditsCommit Text
ecPackageName
  = lens _ecPackageName
      (\ s a -> s{_ecPackageName = a})

-- | Indicates that the changes in this edit will not be reviewed until they
-- are explicitly sent for review from the Google Play Console UI. These
-- changes will be added to any other changes that are not yet sent for
-- review.
ecChangesNotSentForReview :: Lens' EditsCommit (Maybe Bool)
ecChangesNotSentForReview
  = lens _ecChangesNotSentForReview
      (\ s a -> s{_ecChangesNotSentForReview = a})

-- | OAuth access token.
ecAccessToken :: Lens' EditsCommit (Maybe Text)
ecAccessToken
  = lens _ecAccessToken
      (\ s a -> s{_ecAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ecUploadType :: Lens' EditsCommit (Maybe Text)
ecUploadType
  = lens _ecUploadType (\ s a -> s{_ecUploadType = a})

-- | Identifier of the edit.
ecEditId :: Lens' EditsCommit Text
ecEditId = lens _ecEditId (\ s a -> s{_ecEditId = a})

-- | JSONP
ecCallback :: Lens' EditsCommit (Maybe Text)
ecCallback
  = lens _ecCallback (\ s a -> s{_ecCallback = a})

instance GoogleRequest EditsCommit where
        type Rs EditsCommit = AppEdit
        type Scopes EditsCommit =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsCommit'{..}
          = go _ecPackageName _ecEditId _ecXgafv
              _ecUploadProtocol
              _ecChangesNotSentForReview
              _ecAccessToken
              _ecUploadType
              _ecCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy EditsCommitResource)
                      mempty
