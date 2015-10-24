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
-- Module      : Network.Google.Resource.PlayMoviesPartner.Accounts.ExperienceLocales.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List ExperienceLocales owned or managed by the partner. See
-- _Authentication and Authorization rules_ and _List methods rules_ for
-- more information about this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @playmoviespartner.accounts.experienceLocales.list@.
module Network.Google.Resource.PlayMoviesPartner.Accounts.ExperienceLocales.List
    (
    -- * REST Resource
      AccountsExperienceLocalesListResource

    -- * Creating a Request
    , accountsExperienceLocalesList
    , AccountsExperienceLocalesList

    -- * Request Lenses
    , aellTitleLevelEidr
    , aellStatus
    , aellPphNames
    , aellXgafv
    , aellStudioNames
    , aellUploadProtocol
    , aellPp
    , aellAccessToken
    , aellUploadType
    , aellAltCutId
    , aellCustomId
    , aellAccountId
    , aellBearerToken
    , aellEditLevelEidr
    , aellPageToken
    , aellPageSize
    , aellCallback
    ) where

import           Network.Google.PlayMoviesPartner.Types
import           Network.Google.Prelude

-- | A resource alias for @playmoviespartner.accounts.experienceLocales.list@ method which the
-- 'AccountsExperienceLocalesList' request conforms to.
type AccountsExperienceLocalesListResource =
     "v1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "experienceLocales" :>
             QueryParam "titleLevelEidr" Text :>
               QueryParams "status" Text :>
                 QueryParams "pphNames" Text :>
                   QueryParam "$.xgafv" Text :>
                     QueryParams "studioNames" Text :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "pp" Bool :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "altCutId" Text :>
                                 QueryParam "customId" Text :>
                                   QueryParam "bearer_token" Text :>
                                     QueryParam "editLevelEidr" Text :>
                                       QueryParam "pageToken" Text :>
                                         QueryParam "pageSize" (Textual Int32)
                                           :>
                                           QueryParam "callback" Text :>
                                             QueryParam "alt" AltJSON :>
                                               Get '[JSON]
                                                 ListExperienceLocalesResponse

-- | List ExperienceLocales owned or managed by the partner. See
-- _Authentication and Authorization rules_ and _List methods rules_ for
-- more information about this method.
--
-- /See:/ 'accountsExperienceLocalesList' smart constructor.
data AccountsExperienceLocalesList = AccountsExperienceLocalesList
    { _aellTitleLevelEidr :: !(Maybe Text)
    , _aellStatus         :: !(Maybe [Text])
    , _aellPphNames       :: !(Maybe [Text])
    , _aellXgafv          :: !(Maybe Text)
    , _aellStudioNames    :: !(Maybe [Text])
    , _aellUploadProtocol :: !(Maybe Text)
    , _aellPp             :: !Bool
    , _aellAccessToken    :: !(Maybe Text)
    , _aellUploadType     :: !(Maybe Text)
    , _aellAltCutId       :: !(Maybe Text)
    , _aellCustomId       :: !(Maybe Text)
    , _aellAccountId      :: !Text
    , _aellBearerToken    :: !(Maybe Text)
    , _aellEditLevelEidr  :: !(Maybe Text)
    , _aellPageToken      :: !(Maybe Text)
    , _aellPageSize       :: !(Maybe (Textual Int32))
    , _aellCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsExperienceLocalesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aellTitleLevelEidr'
--
-- * 'aellStatus'
--
-- * 'aellPphNames'
--
-- * 'aellXgafv'
--
-- * 'aellStudioNames'
--
-- * 'aellUploadProtocol'
--
-- * 'aellPp'
--
-- * 'aellAccessToken'
--
-- * 'aellUploadType'
--
-- * 'aellAltCutId'
--
-- * 'aellCustomId'
--
-- * 'aellAccountId'
--
-- * 'aellBearerToken'
--
-- * 'aellEditLevelEidr'
--
-- * 'aellPageToken'
--
-- * 'aellPageSize'
--
-- * 'aellCallback'
accountsExperienceLocalesList
    :: Text -- ^ 'aellAccountId'
    -> AccountsExperienceLocalesList
accountsExperienceLocalesList pAellAccountId_ =
    AccountsExperienceLocalesList
    { _aellTitleLevelEidr = Nothing
    , _aellStatus = Nothing
    , _aellPphNames = Nothing
    , _aellXgafv = Nothing
    , _aellStudioNames = Nothing
    , _aellUploadProtocol = Nothing
    , _aellPp = True
    , _aellAccessToken = Nothing
    , _aellUploadType = Nothing
    , _aellAltCutId = Nothing
    , _aellCustomId = Nothing
    , _aellAccountId = pAellAccountId_
    , _aellBearerToken = Nothing
    , _aellEditLevelEidr = Nothing
    , _aellPageToken = Nothing
    , _aellPageSize = Nothing
    , _aellCallback = Nothing
    }

-- | Filter ExperienceLocales that match a given title-level EIDR.
aellTitleLevelEidr :: Lens' AccountsExperienceLocalesList (Maybe Text)
aellTitleLevelEidr
  = lens _aellTitleLevelEidr
      (\ s a -> s{_aellTitleLevelEidr = a})

-- | Filter ExperienceLocales that match one of the given status.
aellStatus :: Lens' AccountsExperienceLocalesList [Text]
aellStatus
  = lens _aellStatus (\ s a -> s{_aellStatus = a}) .
      _Default
      . _Coerce

-- | See _List methods rules_ for info about this field.
aellPphNames :: Lens' AccountsExperienceLocalesList [Text]
aellPphNames
  = lens _aellPphNames (\ s a -> s{_aellPphNames = a})
      . _Default
      . _Coerce

-- | V1 error format.
aellXgafv :: Lens' AccountsExperienceLocalesList (Maybe Text)
aellXgafv
  = lens _aellXgafv (\ s a -> s{_aellXgafv = a})

-- | See _List methods rules_ for info about this field.
aellStudioNames :: Lens' AccountsExperienceLocalesList [Text]
aellStudioNames
  = lens _aellStudioNames
      (\ s a -> s{_aellStudioNames = a})
      . _Default
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aellUploadProtocol :: Lens' AccountsExperienceLocalesList (Maybe Text)
aellUploadProtocol
  = lens _aellUploadProtocol
      (\ s a -> s{_aellUploadProtocol = a})

-- | Pretty-print response.
aellPp :: Lens' AccountsExperienceLocalesList Bool
aellPp = lens _aellPp (\ s a -> s{_aellPp = a})

-- | OAuth access token.
aellAccessToken :: Lens' AccountsExperienceLocalesList (Maybe Text)
aellAccessToken
  = lens _aellAccessToken
      (\ s a -> s{_aellAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aellUploadType :: Lens' AccountsExperienceLocalesList (Maybe Text)
aellUploadType
  = lens _aellUploadType
      (\ s a -> s{_aellUploadType = a})

-- | Filter ExperienceLocales that match a case-insensitive, partner-specific
-- Alternative Cut ID.
aellAltCutId :: Lens' AccountsExperienceLocalesList (Maybe Text)
aellAltCutId
  = lens _aellAltCutId (\ s a -> s{_aellAltCutId = a})

-- | Filter ExperienceLocales that match a case-insensitive, partner-specific
-- custom id.
aellCustomId :: Lens' AccountsExperienceLocalesList (Maybe Text)
aellCustomId
  = lens _aellCustomId (\ s a -> s{_aellCustomId = a})

-- | REQUIRED. See _General rules_ for more information about this field.
aellAccountId :: Lens' AccountsExperienceLocalesList Text
aellAccountId
  = lens _aellAccountId
      (\ s a -> s{_aellAccountId = a})

-- | OAuth bearer token.
aellBearerToken :: Lens' AccountsExperienceLocalesList (Maybe Text)
aellBearerToken
  = lens _aellBearerToken
      (\ s a -> s{_aellBearerToken = a})

-- | Filter ExperienceLocales that match a given edit-level EIDR.
aellEditLevelEidr :: Lens' AccountsExperienceLocalesList (Maybe Text)
aellEditLevelEidr
  = lens _aellEditLevelEidr
      (\ s a -> s{_aellEditLevelEidr = a})

-- | See _List methods rules_ for info about this field.
aellPageToken :: Lens' AccountsExperienceLocalesList (Maybe Text)
aellPageToken
  = lens _aellPageToken
      (\ s a -> s{_aellPageToken = a})

-- | See _List methods rules_ for info about this field.
aellPageSize :: Lens' AccountsExperienceLocalesList (Maybe Int32)
aellPageSize
  = lens _aellPageSize (\ s a -> s{_aellPageSize = a})
      . mapping _Coerce

-- | JSONP
aellCallback :: Lens' AccountsExperienceLocalesList (Maybe Text)
aellCallback
  = lens _aellCallback (\ s a -> s{_aellCallback = a})

instance GoogleRequest AccountsExperienceLocalesList
         where
        type Rs AccountsExperienceLocalesList =
             ListExperienceLocalesResponse
        requestClient AccountsExperienceLocalesList{..}
          = go _aellAccountId _aellTitleLevelEidr
              (_aellStatus ^. _Default)
              (_aellPphNames ^. _Default)
              _aellXgafv
              (_aellStudioNames ^. _Default)
              _aellUploadProtocol
              (Just _aellPp)
              _aellAccessToken
              _aellUploadType
              _aellAltCutId
              _aellCustomId
              _aellBearerToken
              _aellEditLevelEidr
              _aellPageToken
              _aellPageSize
              _aellCallback
              (Just AltJSON)
              playMoviesPartnerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsExperienceLocalesListResource)
                      mempty
