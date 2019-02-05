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
-- \`Ruleset\` name. The full \`Source\` contents of a \`Ruleset\` may be
-- retrieved with GetRuleset.
--
-- /See:/ <https://firebase.google.com/docs/storage/security Firebase Rules API Reference> for @firebaserules.projects.rulesets.list@.
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
    , prlAccessToken
    , prlUploadType
    , prlName
    , prlFilter
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
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListRulesetsResponse

-- | List \`Ruleset\` metadata only and optionally filter the results by
-- \`Ruleset\` name. The full \`Source\` contents of a \`Ruleset\` may be
-- retrieved with GetRuleset.
--
-- /See:/ 'projectsRulesetsList' smart constructor.
data ProjectsRulesetsList = ProjectsRulesetsList'
    { _prlXgafv          :: !(Maybe Xgafv)
    , _prlUploadProtocol :: !(Maybe Text)
    , _prlAccessToken    :: !(Maybe Text)
    , _prlUploadType     :: !(Maybe Text)
    , _prlName           :: !Text
    , _prlFilter         :: !(Maybe Text)
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
-- * 'prlAccessToken'
--
-- * 'prlUploadType'
--
-- * 'prlName'
--
-- * 'prlFilter'
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
    , _prlAccessToken = Nothing
    , _prlUploadType = Nothing
    , _prlName = pPrlName_
    , _prlFilter = Nothing
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

-- | Resource name for the project. Format: \`projects\/{project_id}\`
prlName :: Lens' ProjectsRulesetsList Text
prlName = lens _prlName (\ s a -> s{_prlName = a})

-- | \`Ruleset\` filter. The list method supports filters with restrictions
-- on \`Ruleset.name\`. Filters on \`Ruleset.create_time\` should use the
-- \`date\` function which parses strings that conform to the RFC 3339
-- date\/time specifications. Example: \`create_time > date(\"2017-01-01\")
-- AND name=UUID-*\`
prlFilter :: Lens' ProjectsRulesetsList (Maybe Text)
prlFilter
  = lens _prlFilter (\ s a -> s{_prlFilter = a})

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
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase",
               "https://www.googleapis.com/auth/firebase.readonly"]
        requestClient ProjectsRulesetsList'{..}
          = go _prlName _prlXgafv _prlUploadProtocol
              _prlAccessToken
              _prlUploadType
              _prlFilter
              _prlPageToken
              _prlPageSize
              _prlCallback
              (Just AltJSON)
              firebaseRulesService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRulesetsListResource)
                      mempty
