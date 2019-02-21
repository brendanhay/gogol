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
-- Module      : Network.Google.Resource.Vault.Matters.Holds.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists holds within a matter. An empty page token in ListHoldsResponse
-- denotes no more holds to list.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.holds.list@.
module Network.Google.Resource.Vault.Matters.Holds.List
    (
    -- * REST Resource
      MattersHoldsListResource

    -- * Creating a Request
    , mattersHoldsList
    , MattersHoldsList

    -- * Request Lenses
    , mhlXgafv
    , mhlUploadProtocol
    , mhlAccessToken
    , mhlUploadType
    , mhlMatterId
    , mhlView
    , mhlPageToken
    , mhlPageSize
    , mhlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Vault.Types

-- | A resource alias for @vault.matters.holds.list@ method which the
-- 'MattersHoldsList' request conforms to.
type MattersHoldsListResource =
     "v1" :>
       "matters" :>
         Capture "matterId" Text :>
           "holds" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "view" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListHoldsResponse

-- | Lists holds within a matter. An empty page token in ListHoldsResponse
-- denotes no more holds to list.
--
-- /See:/ 'mattersHoldsList' smart constructor.
data MattersHoldsList =
  MattersHoldsList'
    { _mhlXgafv          :: !(Maybe Xgafv)
    , _mhlUploadProtocol :: !(Maybe Text)
    , _mhlAccessToken    :: !(Maybe Text)
    , _mhlUploadType     :: !(Maybe Text)
    , _mhlMatterId       :: !Text
    , _mhlView           :: !(Maybe Text)
    , _mhlPageToken      :: !(Maybe Text)
    , _mhlPageSize       :: !(Maybe (Textual Int32))
    , _mhlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersHoldsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mhlXgafv'
--
-- * 'mhlUploadProtocol'
--
-- * 'mhlAccessToken'
--
-- * 'mhlUploadType'
--
-- * 'mhlMatterId'
--
-- * 'mhlView'
--
-- * 'mhlPageToken'
--
-- * 'mhlPageSize'
--
-- * 'mhlCallback'
mattersHoldsList
    :: Text -- ^ 'mhlMatterId'
    -> MattersHoldsList
mattersHoldsList pMhlMatterId_ =
  MattersHoldsList'
    { _mhlXgafv = Nothing
    , _mhlUploadProtocol = Nothing
    , _mhlAccessToken = Nothing
    , _mhlUploadType = Nothing
    , _mhlMatterId = pMhlMatterId_
    , _mhlView = Nothing
    , _mhlPageToken = Nothing
    , _mhlPageSize = Nothing
    , _mhlCallback = Nothing
    }


-- | V1 error format.
mhlXgafv :: Lens' MattersHoldsList (Maybe Xgafv)
mhlXgafv = lens _mhlXgafv (\ s a -> s{_mhlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mhlUploadProtocol :: Lens' MattersHoldsList (Maybe Text)
mhlUploadProtocol
  = lens _mhlUploadProtocol
      (\ s a -> s{_mhlUploadProtocol = a})

-- | OAuth access token.
mhlAccessToken :: Lens' MattersHoldsList (Maybe Text)
mhlAccessToken
  = lens _mhlAccessToken
      (\ s a -> s{_mhlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mhlUploadType :: Lens' MattersHoldsList (Maybe Text)
mhlUploadType
  = lens _mhlUploadType
      (\ s a -> s{_mhlUploadType = a})

-- | The matter ID.
mhlMatterId :: Lens' MattersHoldsList Text
mhlMatterId
  = lens _mhlMatterId (\ s a -> s{_mhlMatterId = a})

-- | Specifies which parts of the Hold to return.
mhlView :: Lens' MattersHoldsList (Maybe Text)
mhlView = lens _mhlView (\ s a -> s{_mhlView = a})

-- | The pagination token as returned in the response. An empty token means
-- start from the beginning.
mhlPageToken :: Lens' MattersHoldsList (Maybe Text)
mhlPageToken
  = lens _mhlPageToken (\ s a -> s{_mhlPageToken = a})

-- | The number of holds to return in the response, between 0 and 100
-- inclusive. Leaving this empty, or as 0, is the same as page_size = 100.
mhlPageSize :: Lens' MattersHoldsList (Maybe Int32)
mhlPageSize
  = lens _mhlPageSize (\ s a -> s{_mhlPageSize = a}) .
      mapping _Coerce

-- | JSONP
mhlCallback :: Lens' MattersHoldsList (Maybe Text)
mhlCallback
  = lens _mhlCallback (\ s a -> s{_mhlCallback = a})

instance GoogleRequest MattersHoldsList where
        type Rs MattersHoldsList = ListHoldsResponse
        type Scopes MattersHoldsList =
             '["https://www.googleapis.com/auth/ediscovery",
               "https://www.googleapis.com/auth/ediscovery.readonly"]
        requestClient MattersHoldsList'{..}
          = go _mhlMatterId _mhlXgafv _mhlUploadProtocol
              _mhlAccessToken
              _mhlUploadType
              _mhlView
              _mhlPageToken
              _mhlPageSize
              _mhlCallback
              (Just AltJSON)
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersHoldsListResource)
                      mempty
