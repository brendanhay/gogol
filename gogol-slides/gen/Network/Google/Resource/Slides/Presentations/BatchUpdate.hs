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
-- Module      : Network.Google.Resource.Slides.Presentations.BatchUpdate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies one or more updates to the presentation. Each request is
-- validated before being applied. If any request is not valid, then the
-- entire request will fail and nothing will be applied. Some requests have
-- replies to give you some information about how they are applied. Other
-- requests do not need to return information; these each return an empty
-- reply. The order of replies matches that of the requests. For example,
-- suppose you call batchUpdate with four updates, and only the third one
-- returns information. The response would have two empty replies: the
-- reply to the third request, and another empty reply, in that order.
-- Because other users may be editing the presentation, the presentation
-- might not exactly reflect your changes: your changes may be altered with
-- respect to collaborator changes. If there are no collaborators, the
-- presentation should reflect your changes. In any case, the updates in
-- your request are guaranteed to be applied together atomically.
--
-- /See:/ <https://developers.google.com/slides/ Google Slides API Reference> for @slides.presentations.batchUpdate@.
module Network.Google.Resource.Slides.Presentations.BatchUpdate
    (
    -- * REST Resource
      PresentationsBatchUpdateResource

    -- * Creating a Request
    , presentationsBatchUpdate
    , PresentationsBatchUpdate

    -- * Request Lenses
    , pbuXgafv
    , pbuUploadProtocol
    , pbuAccessToken
    , pbuUploadType
    , pbuPresentationId
    , pbuPayload
    , pbuCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Slides.Types

-- | A resource alias for @slides.presentations.batchUpdate@ method which the
-- 'PresentationsBatchUpdate' request conforms to.
type PresentationsBatchUpdateResource =
     "v1" :>
       "presentations" :>
         CaptureMode "presentationId" "batchUpdate" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BatchUpdatePresentationRequest :>
                         Post '[JSON] BatchUpdatePresentationResponse

-- | Applies one or more updates to the presentation. Each request is
-- validated before being applied. If any request is not valid, then the
-- entire request will fail and nothing will be applied. Some requests have
-- replies to give you some information about how they are applied. Other
-- requests do not need to return information; these each return an empty
-- reply. The order of replies matches that of the requests. For example,
-- suppose you call batchUpdate with four updates, and only the third one
-- returns information. The response would have two empty replies: the
-- reply to the third request, and another empty reply, in that order.
-- Because other users may be editing the presentation, the presentation
-- might not exactly reflect your changes: your changes may be altered with
-- respect to collaborator changes. If there are no collaborators, the
-- presentation should reflect your changes. In any case, the updates in
-- your request are guaranteed to be applied together atomically.
--
-- /See:/ 'presentationsBatchUpdate' smart constructor.
data PresentationsBatchUpdate = PresentationsBatchUpdate'
    { _pbuXgafv          :: !(Maybe Xgafv)
    , _pbuUploadProtocol :: !(Maybe Text)
    , _pbuAccessToken    :: !(Maybe Text)
    , _pbuUploadType     :: !(Maybe Text)
    , _pbuPresentationId :: !Text
    , _pbuPayload        :: !BatchUpdatePresentationRequest
    , _pbuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PresentationsBatchUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbuXgafv'
--
-- * 'pbuUploadProtocol'
--
-- * 'pbuAccessToken'
--
-- * 'pbuUploadType'
--
-- * 'pbuPresentationId'
--
-- * 'pbuPayload'
--
-- * 'pbuCallback'
presentationsBatchUpdate
    :: Text -- ^ 'pbuPresentationId'
    -> BatchUpdatePresentationRequest -- ^ 'pbuPayload'
    -> PresentationsBatchUpdate
presentationsBatchUpdate pPbuPresentationId_ pPbuPayload_ =
    PresentationsBatchUpdate'
    { _pbuXgafv = Nothing
    , _pbuUploadProtocol = Nothing
    , _pbuAccessToken = Nothing
    , _pbuUploadType = Nothing
    , _pbuPresentationId = pPbuPresentationId_
    , _pbuPayload = pPbuPayload_
    , _pbuCallback = Nothing
    }

-- | V1 error format.
pbuXgafv :: Lens' PresentationsBatchUpdate (Maybe Xgafv)
pbuXgafv = lens _pbuXgafv (\ s a -> s{_pbuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pbuUploadProtocol :: Lens' PresentationsBatchUpdate (Maybe Text)
pbuUploadProtocol
  = lens _pbuUploadProtocol
      (\ s a -> s{_pbuUploadProtocol = a})

-- | OAuth access token.
pbuAccessToken :: Lens' PresentationsBatchUpdate (Maybe Text)
pbuAccessToken
  = lens _pbuAccessToken
      (\ s a -> s{_pbuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pbuUploadType :: Lens' PresentationsBatchUpdate (Maybe Text)
pbuUploadType
  = lens _pbuUploadType
      (\ s a -> s{_pbuUploadType = a})

-- | The presentation to apply the updates to.
pbuPresentationId :: Lens' PresentationsBatchUpdate Text
pbuPresentationId
  = lens _pbuPresentationId
      (\ s a -> s{_pbuPresentationId = a})

-- | Multipart request metadata.
pbuPayload :: Lens' PresentationsBatchUpdate BatchUpdatePresentationRequest
pbuPayload
  = lens _pbuPayload (\ s a -> s{_pbuPayload = a})

-- | JSONP
pbuCallback :: Lens' PresentationsBatchUpdate (Maybe Text)
pbuCallback
  = lens _pbuCallback (\ s a -> s{_pbuCallback = a})

instance GoogleRequest PresentationsBatchUpdate where
        type Rs PresentationsBatchUpdate =
             BatchUpdatePresentationResponse
        type Scopes PresentationsBatchUpdate =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.readonly",
               "https://www.googleapis.com/auth/presentations",
               "https://www.googleapis.com/auth/spreadsheets",
               "https://www.googleapis.com/auth/spreadsheets.readonly"]
        requestClient PresentationsBatchUpdate'{..}
          = go _pbuPresentationId _pbuXgafv _pbuUploadProtocol
              _pbuAccessToken
              _pbuUploadType
              _pbuCallback
              (Just AltJSON)
              _pbuPayload
              slidesService
          where go
                  = buildClient
                      (Proxy :: Proxy PresentationsBatchUpdateResource)
                      mempty
