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
-- Module      : Network.Google.Resource.FirebaseRules.Projects.Rulesets.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List \`Ruleset\` metadata only and optionally filter the results by
-- Ruleset name. The full \`Source\` contents of a \`Ruleset\` may be
-- retrieved with GetRuleset.
--
-- /See:/ <https://firebase.google.com/docs/storage/security/start Firebase Rules API Reference> for @firebaserules.projects.rulesets.list@.
module Network.Google.Resource.FirebaseRules.Projects.Rulesets.List
    (
    -- * REST Resource
      ProjectsRulesetsListResource

    -- * Creating a Request
    , projectsRulesetsList
    , ProjectsRulesetsList

    -- * Request Lenses
    , prlXgafv
    , prlUploadProtocol
    , prlPp
    , prlAccessToken
    , prlUploadType
    , prlBearerToken
    , prlName
    , prlPageToken
    , prlPageSize
    , prlCallback
    ) where

import           Network.Google.FirebaseRules.Types
import           Network.Google.Prelude

-- | A resource alias for @firebaserules.projects.rulesets.list@ method which the
-- 'ProjectsRulesetsList' request conforms to.
type ProjectsRulesetsListResource =
     "v1" :>
       Capture "name" Text :>
         "rulesets" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListRulesetsResponse

-- | List \`Ruleset\` metadata only and optionally filter the results by
-- Ruleset name. The full \`Source\` contents of a \`Ruleset\` may be
-- retrieved with GetRuleset.
--
-- /See:/ 'projectsRulesetsList' smart constructor.
data ProjectsRulesetsList = ProjectsRulesetsList'
    { _prlXgafv          :: !(Maybe Xgafv)
    , _prlUploadProtocol :: !(Maybe Text)
    , _prlPp             :: !Bool
    , _prlAccessToken    :: !(Maybe Text)
    , _prlUploadType     :: !(Maybe Text)
    , _prlBearerToken    :: !(Maybe Text)
    , _prlName           :: !Text
    , _prlPageToken      :: !(Maybe Text)
    , _prlPageSize       :: !(Maybe (Textual Int32))
    , _prlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsRulesetsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prlXgafv'
--
-- * 'prlUploadProtocol'
--
-- * 'prlPp'
--
-- * 'prlAccessToken'
--
-- * 'prlUploadType'
--
-- * 'prlBearerToken'
--
-- * 'prlName'
--
-- * 'prlPageToken'
--
-- * 'prlPageSize'
--
-- * 'prlCallback'
projectsRulesetsList
    :: Text -- ^ 'prlName'
    -> ProjectsRulesetsList
projectsRulesetsList pPrlName_ =
    ProjectsRulesetsList'
    { _prlXgafv = Nothing
    , _prlUploadProtocol = Nothing
    , _prlPp = True
    , _prlAccessToken = Nothing
    , _prlUploadType = Nothing
    , _prlBearerToken = Nothing
    , _prlName = pPrlName_
    , _prlPageToken = Nothing
    , _prlPageSize = Nothing
    , _prlCallback = Nothing
    }

-- | V1 error format.
prlXgafv :: Lens' ProjectsRulesetsList (Maybe Xgafv)
prlXgafv = lens _prlXgafv (\ s a -> s{_prlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prlUploadProtocol :: Lens' ProjectsRulesetsList (Maybe Text)
prlUploadProtocol
  = lens _prlUploadProtocol
      (\ s a -> s{_prlUploadProtocol = a})

-- | Pretty-print response.
prlPp :: Lens' ProjectsRulesetsList Bool
prlPp = lens _prlPp (\ s a -> s{_prlPp = a})

-- | OAuth access token.
prlAccessToken :: Lens' ProjectsRulesetsList (Maybe Text)
prlAccessToken
  = lens _prlAccessToken
      (\ s a -> s{_prlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prlUploadType :: Lens' ProjectsRulesetsList (Maybe Text)
prlUploadType
  = lens _prlUploadType
      (\ s a -> s{_prlUploadType = a})

-- | OAuth bearer token.
prlBearerToken :: Lens' ProjectsRulesetsList (Maybe Text)
prlBearerToken
  = lens _prlBearerToken
      (\ s a -> s{_prlBearerToken = a})

-- | Resource name for the project. Format: \`projects\/{project_id}\`
prlName :: Lens' ProjectsRulesetsList Text
prlName = lens _prlName (\ s a -> s{_prlName = a})

-- | Next page token for loading the next batch of \`Ruleset\` instances.
prlPageToken :: Lens' ProjectsRulesetsList (Maybe Text)
prlPageToken
  = lens _prlPageToken (\ s a -> s{_prlPageToken = a})

-- | Page size to load. Maximum of 100. Defaults to 10. Note: \`page_size\`
-- is just a hint and the service may choose to load less than
-- \`page_size\` due to the size of the output. To traverse all of the
-- releases, caller should iterate until the \`page_token\` is empty.
prlPageSize :: Lens' ProjectsRulesetsList (Maybe Int32)
prlPageSize
  = lens _prlPageSize (\ s a -> s{_prlPageSize = a}) .
      mapping _Coerce

-- | JSONP
prlCallback :: Lens' ProjectsRulesetsList (Maybe Text)
prlCallback
  = lens _prlCallback (\ s a -> s{_prlCallback = a})

instance GoogleRequest ProjectsRulesetsList where
        type Rs ProjectsRulesetsList = ListRulesetsResponse
        type Scopes ProjectsRulesetsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRulesetsList'{..}
          = go _prlName _prlXgafv _prlUploadProtocol
              (Just _prlPp)
              _prlAccessToken
              _prlUploadType
              _prlBearerToken
              _prlPageToken
              _prlPageSize
              _prlCallback
              (Just AltJSON)
              firebaseRulesService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRulesetsListResource)
                      mempty
