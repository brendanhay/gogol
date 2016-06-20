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
-- Module      : Network.Google.Resource.PlayMoviesPartner.Accounts.Components.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List Components owned or managed by the partner. See _Authentication and
-- Authorization rules_ and _List methods rules_ for more information about
-- this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @playmoviespartner.accounts.components.list@.
module Network.Google.Resource.PlayMoviesPartner.Accounts.Components.List
    (
    -- * REST Resource
      AccountsComponentsListResource

    -- * Creating a Request
    , accountsComponentsList
    , AccountsComponentsList

    -- * Request Lenses
    , aclTitleLevelEidr
    , aclStatus
    , aclPphNames
    , aclXgafv
    , aclStudioNames
    , aclInventoryId
    , aclUploadProtocol
    , aclPp
    , aclAccessToken
    , aclUploadType
    , aclPresentationId
    , aclAltCutId
    , aclCustomId
    , aclPlayableSequenceId
    , aclElId
    , aclAccountId
    , aclBearerToken
    , aclEditLevelEidr
    , aclPageToken
    , aclPageSize
    , aclFilename
    , aclCallback
    ) where

import           Network.Google.PlayMoviesPartner.Types
import           Network.Google.Prelude

-- | A resource alias for @playmoviespartner.accounts.components.list@ method which the
-- 'AccountsComponentsList' request conforms to.
type AccountsComponentsListResource =
     "v1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "components" :>
             QueryParam "titleLevelEidr" Text :>
               QueryParams "status" Text :>
                 QueryParams "pphNames" Text :>
                   QueryParam "$.xgafv" Text :>
                     QueryParams "studioNames" Text :>
                       QueryParam "inventoryId" Text :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "pp" Bool :>
                             QueryParam "access_token" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "presentationId" Text :>
                                   QueryParam "altCutId" Text :>
                                     QueryParam "customId" Text :>
                                       QueryParam "playableSequenceId" Text :>
                                         QueryParam "elId" Text :>
                                           QueryParam "bearer_token" Text :>
                                             QueryParam "editLevelEidr" Text :>
                                               QueryParam "pageToken" Text :>
                                                 QueryParam "pageSize"
                                                   (Textual Int32)
                                                   :>
                                                   QueryParam "filename" Text :>
                                                     QueryParam "callback" Text
                                                       :>
                                                       QueryParam "alt" AltJSON
                                                         :>
                                                         Get '[JSON]
                                                           ListComponentsResponse

-- | List Components owned or managed by the partner. See _Authentication and
-- Authorization rules_ and _List methods rules_ for more information about
-- this method.
--
-- /See:/ 'accountsComponentsList' smart constructor.
data AccountsComponentsList = AccountsComponentsList'
    { _aclTitleLevelEidr     :: !(Maybe Text)
    , _aclStatus             :: !(Maybe [Text])
    , _aclPphNames           :: !(Maybe [Text])
    , _aclXgafv              :: !(Maybe Text)
    , _aclStudioNames        :: !(Maybe [Text])
    , _aclInventoryId        :: !(Maybe Text)
    , _aclUploadProtocol     :: !(Maybe Text)
    , _aclPp                 :: !Bool
    , _aclAccessToken        :: !(Maybe Text)
    , _aclUploadType         :: !(Maybe Text)
    , _aclPresentationId     :: !(Maybe Text)
    , _aclAltCutId           :: !(Maybe Text)
    , _aclCustomId           :: !(Maybe Text)
    , _aclPlayableSequenceId :: !(Maybe Text)
    , _aclElId               :: !(Maybe Text)
    , _aclAccountId          :: !Text
    , _aclBearerToken        :: !(Maybe Text)
    , _aclEditLevelEidr      :: !(Maybe Text)
    , _aclPageToken          :: !(Maybe Text)
    , _aclPageSize           :: !(Maybe (Textual Int32))
    , _aclFilename           :: !(Maybe Text)
    , _aclCallback           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsComponentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclTitleLevelEidr'
--
-- * 'aclStatus'
--
-- * 'aclPphNames'
--
-- * 'aclXgafv'
--
-- * 'aclStudioNames'
--
-- * 'aclInventoryId'
--
-- * 'aclUploadProtocol'
--
-- * 'aclPp'
--
-- * 'aclAccessToken'
--
-- * 'aclUploadType'
--
-- * 'aclPresentationId'
--
-- * 'aclAltCutId'
--
-- * 'aclCustomId'
--
-- * 'aclPlayableSequenceId'
--
-- * 'aclElId'
--
-- * 'aclAccountId'
--
-- * 'aclBearerToken'
--
-- * 'aclEditLevelEidr'
--
-- * 'aclPageToken'
--
-- * 'aclPageSize'
--
-- * 'aclFilename'
--
-- * 'aclCallback'
accountsComponentsList
    :: Text -- ^ 'aclAccountId'
    -> AccountsComponentsList
accountsComponentsList pAclAccountId_ =
    AccountsComponentsList'
    { _aclTitleLevelEidr = Nothing
    , _aclStatus = Nothing
    , _aclPphNames = Nothing
    , _aclXgafv = Nothing
    , _aclStudioNames = Nothing
    , _aclInventoryId = Nothing
    , _aclUploadProtocol = Nothing
    , _aclPp = True
    , _aclAccessToken = Nothing
    , _aclUploadType = Nothing
    , _aclPresentationId = Nothing
    , _aclAltCutId = Nothing
    , _aclCustomId = Nothing
    , _aclPlayableSequenceId = Nothing
    , _aclElId = Nothing
    , _aclAccountId = pAclAccountId_
    , _aclBearerToken = Nothing
    , _aclEditLevelEidr = Nothing
    , _aclPageToken = Nothing
    , _aclPageSize = Nothing
    , _aclFilename = Nothing
    , _aclCallback = Nothing
    }

-- | Filter Components that match a given title-level EIDR.
aclTitleLevelEidr :: Lens' AccountsComponentsList (Maybe Text)
aclTitleLevelEidr
  = lens _aclTitleLevelEidr
      (\ s a -> s{_aclTitleLevelEidr = a})

-- | Filter Components that match one of the given status.
aclStatus :: Lens' AccountsComponentsList [Text]
aclStatus
  = lens _aclStatus (\ s a -> s{_aclStatus = a}) .
      _Default
      . _Coerce

-- | See _List methods rules_ for info about this field.
aclPphNames :: Lens' AccountsComponentsList [Text]
aclPphNames
  = lens _aclPphNames (\ s a -> s{_aclPphNames = a}) .
      _Default
      . _Coerce

-- | V1 error format.
aclXgafv :: Lens' AccountsComponentsList (Maybe Text)
aclXgafv = lens _aclXgafv (\ s a -> s{_aclXgafv = a})

-- | See _List methods rules_ for info about this field.
aclStudioNames :: Lens' AccountsComponentsList [Text]
aclStudioNames
  = lens _aclStudioNames
      (\ s a -> s{_aclStudioNames = a})
      . _Default
      . _Coerce

-- | InventoryID available in Common Manifest.
aclInventoryId :: Lens' AccountsComponentsList (Maybe Text)
aclInventoryId
  = lens _aclInventoryId
      (\ s a -> s{_aclInventoryId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aclUploadProtocol :: Lens' AccountsComponentsList (Maybe Text)
aclUploadProtocol
  = lens _aclUploadProtocol
      (\ s a -> s{_aclUploadProtocol = a})

-- | Pretty-print response.
aclPp :: Lens' AccountsComponentsList Bool
aclPp = lens _aclPp (\ s a -> s{_aclPp = a})

-- | OAuth access token.
aclAccessToken :: Lens' AccountsComponentsList (Maybe Text)
aclAccessToken
  = lens _aclAccessToken
      (\ s a -> s{_aclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aclUploadType :: Lens' AccountsComponentsList (Maybe Text)
aclUploadType
  = lens _aclUploadType
      (\ s a -> s{_aclUploadType = a})

-- | PresentationID available in Common Manifest.
aclPresentationId :: Lens' AccountsComponentsList (Maybe Text)
aclPresentationId
  = lens _aclPresentationId
      (\ s a -> s{_aclPresentationId = a})

-- | Filter Components that match a case-insensitive, partner-specific
-- Alternative Cut ID.
aclAltCutId :: Lens' AccountsComponentsList (Maybe Text)
aclAltCutId
  = lens _aclAltCutId (\ s a -> s{_aclAltCutId = a})

-- | Filter Components that match a case-insensitive partner-specific custom
-- id.
aclCustomId :: Lens' AccountsComponentsList (Maybe Text)
aclCustomId
  = lens _aclCustomId (\ s a -> s{_aclCustomId = a})

-- | PlayableSequenceID available in Common Manifest.
aclPlayableSequenceId :: Lens' AccountsComponentsList (Maybe Text)
aclPlayableSequenceId
  = lens _aclPlayableSequenceId
      (\ s a -> s{_aclPlayableSequenceId = a})

-- | Experience ID, as defined by Google.
aclElId :: Lens' AccountsComponentsList (Maybe Text)
aclElId = lens _aclElId (\ s a -> s{_aclElId = a})

-- | REQUIRED. See _General rules_ for more information about this field.
aclAccountId :: Lens' AccountsComponentsList Text
aclAccountId
  = lens _aclAccountId (\ s a -> s{_aclAccountId = a})

-- | OAuth bearer token.
aclBearerToken :: Lens' AccountsComponentsList (Maybe Text)
aclBearerToken
  = lens _aclBearerToken
      (\ s a -> s{_aclBearerToken = a})

-- | Filter Components that match a given edit-level EIDR.
aclEditLevelEidr :: Lens' AccountsComponentsList (Maybe Text)
aclEditLevelEidr
  = lens _aclEditLevelEidr
      (\ s a -> s{_aclEditLevelEidr = a})

-- | See _List methods rules_ for info about this field.
aclPageToken :: Lens' AccountsComponentsList (Maybe Text)
aclPageToken
  = lens _aclPageToken (\ s a -> s{_aclPageToken = a})

-- | See _List methods rules_ for info about this field.
aclPageSize :: Lens' AccountsComponentsList (Maybe Int32)
aclPageSize
  = lens _aclPageSize (\ s a -> s{_aclPageSize = a}) .
      mapping _Coerce

-- | Filter Components that match a case-insensitive substring of the
-- physical name of the delivered file.
aclFilename :: Lens' AccountsComponentsList (Maybe Text)
aclFilename
  = lens _aclFilename (\ s a -> s{_aclFilename = a})

-- | JSONP
aclCallback :: Lens' AccountsComponentsList (Maybe Text)
aclCallback
  = lens _aclCallback (\ s a -> s{_aclCallback = a})

instance GoogleRequest AccountsComponentsList where
        type Rs AccountsComponentsList =
             ListComponentsResponse
        type Scopes AccountsComponentsList =
             '["https://www.googleapis.com/auth/playmovies_partner.readonly"]
        requestClient AccountsComponentsList'{..}
          = go _aclAccountId _aclTitleLevelEidr
              (_aclStatus ^. _Default)
              (_aclPphNames ^. _Default)
              _aclXgafv
              (_aclStudioNames ^. _Default)
              _aclInventoryId
              _aclUploadProtocol
              (Just _aclPp)
              _aclAccessToken
              _aclUploadType
              _aclPresentationId
              _aclAltCutId
              _aclCustomId
              _aclPlayableSequenceId
              _aclElId
              _aclBearerToken
              _aclEditLevelEidr
              _aclPageToken
              _aclPageSize
              _aclFilename
              _aclCallback
              (Just AltJSON)
              playMoviesPartnerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsComponentsListResource)
                      mempty
