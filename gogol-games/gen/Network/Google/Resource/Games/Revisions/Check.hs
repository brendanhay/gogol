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
-- Module      : Network.Google.Resource.Games.Revisions.Check
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks whether the games client is out of date.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.revisions.check@.
module Network.Google.Resource.Games.Revisions.Check
    (
    -- * REST Resource
      RevisionsCheckResource

    -- * Creating a Request
    , revisionsCheck
    , RevisionsCheck

    -- * Request Lenses
    , rcXgafv
    , rcUploadProtocol
    , rcClientRevision
    , rcAccessToken
    , rcUploadType
    , rcCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.revisions.check@ method which the
-- 'RevisionsCheck' request conforms to.
type RevisionsCheckResource =
     "games" :>
       "v1" :>
         "revisions" :>
           "check" :>
             QueryParam "clientRevision" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] RevisionCheckResponse

-- | Checks whether the games client is out of date.
--
-- /See:/ 'revisionsCheck' smart constructor.
data RevisionsCheck =
  RevisionsCheck'
    { _rcXgafv :: !(Maybe Xgafv)
    , _rcUploadProtocol :: !(Maybe Text)
    , _rcClientRevision :: !Text
    , _rcAccessToken :: !(Maybe Text)
    , _rcUploadType :: !(Maybe Text)
    , _rcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RevisionsCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcXgafv'
--
-- * 'rcUploadProtocol'
--
-- * 'rcClientRevision'
--
-- * 'rcAccessToken'
--
-- * 'rcUploadType'
--
-- * 'rcCallback'
revisionsCheck
    :: Text -- ^ 'rcClientRevision'
    -> RevisionsCheck
revisionsCheck pRcClientRevision_ =
  RevisionsCheck'
    { _rcXgafv = Nothing
    , _rcUploadProtocol = Nothing
    , _rcClientRevision = pRcClientRevision_
    , _rcAccessToken = Nothing
    , _rcUploadType = Nothing
    , _rcCallback = Nothing
    }


-- | V1 error format.
rcXgafv :: Lens' RevisionsCheck (Maybe Xgafv)
rcXgafv = lens _rcXgafv (\ s a -> s{_rcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rcUploadProtocol :: Lens' RevisionsCheck (Maybe Text)
rcUploadProtocol
  = lens _rcUploadProtocol
      (\ s a -> s{_rcUploadProtocol = a})

-- | The revision of the client SDK used by your application. Format:
-- \`[PLATFORM_TYPE]:[VERSION_NUMBER]\`. Possible values of
-- \`PLATFORM_TYPE\` are: * \`ANDROID\` - Client is running the Android
-- SDK. * \`IOS\` - Client is running the iOS SDK. * \`WEB_APP\` - Client
-- is running as a Web App.
rcClientRevision :: Lens' RevisionsCheck Text
rcClientRevision
  = lens _rcClientRevision
      (\ s a -> s{_rcClientRevision = a})

-- | OAuth access token.
rcAccessToken :: Lens' RevisionsCheck (Maybe Text)
rcAccessToken
  = lens _rcAccessToken
      (\ s a -> s{_rcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rcUploadType :: Lens' RevisionsCheck (Maybe Text)
rcUploadType
  = lens _rcUploadType (\ s a -> s{_rcUploadType = a})

-- | JSONP
rcCallback :: Lens' RevisionsCheck (Maybe Text)
rcCallback
  = lens _rcCallback (\ s a -> s{_rcCallback = a})

instance GoogleRequest RevisionsCheck where
        type Rs RevisionsCheck = RevisionCheckResponse
        type Scopes RevisionsCheck =
             '["https://www.googleapis.com/auth/games"]
        requestClient RevisionsCheck'{..}
          = go (Just _rcClientRevision) _rcXgafv
              _rcUploadProtocol
              _rcAccessToken
              _rcUploadType
              _rcCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy RevisionsCheckResource)
                      mempty
