{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Template.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of templates.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTemplateList@.
module FusionTables.Template.List
    (
    -- * REST Resource
      TemplateListAPI

    -- * Creating a Request
    , templateList
    , TemplateList

    -- * Request Lenses
    , tQuotaUser
    , tPrettyPrint
    , tUserIp
    , tKey
    , tPageToken
    , tOauthToken
    , tTableId
    , tMaxResults
    , tFields
    , tAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTemplateList@ which the
-- 'TemplateList' request conforms to.
type TemplateListAPI =
     "tables" :>
       Capture "tableId" Text :>
         "templates" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               Get '[JSON] TemplateList

-- | Retrieves a list of templates.
--
-- /See:/ 'templateList' smart constructor.
data TemplateList = TemplateList
    { _tQuotaUser   :: !(Maybe Text)
    , _tPrettyPrint :: !Bool
    , _tUserIp      :: !(Maybe Text)
    , _tKey         :: !(Maybe Text)
    , _tPageToken   :: !(Maybe Text)
    , _tOauthToken  :: !(Maybe Text)
    , _tTableId     :: !Text
    , _tMaxResults  :: !(Maybe Word32)
    , _tFields      :: !(Maybe Text)
    , _tAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tQuotaUser'
--
-- * 'tPrettyPrint'
--
-- * 'tUserIp'
--
-- * 'tKey'
--
-- * 'tPageToken'
--
-- * 'tOauthToken'
--
-- * 'tTableId'
--
-- * 'tMaxResults'
--
-- * 'tFields'
--
-- * 'tAlt'
templateList
    :: Text -- ^ 'tableId'
    -> TemplateList
templateList pTTableId_ =
    TemplateList
    { _tQuotaUser = Nothing
    , _tPrettyPrint = True
    , _tUserIp = Nothing
    , _tKey = Nothing
    , _tPageToken = Nothing
    , _tOauthToken = Nothing
    , _tTableId = pTTableId_
    , _tMaxResults = Nothing
    , _tFields = Nothing
    , _tAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tQuotaUser :: Lens' TemplateList' (Maybe Text)
tQuotaUser
  = lens _tQuotaUser (\ s a -> s{_tQuotaUser = a})

-- | Returns response with indentations and line breaks.
tPrettyPrint :: Lens' TemplateList' Bool
tPrettyPrint
  = lens _tPrettyPrint (\ s a -> s{_tPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tUserIp :: Lens' TemplateList' (Maybe Text)
tUserIp = lens _tUserIp (\ s a -> s{_tUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tKey :: Lens' TemplateList' (Maybe Text)
tKey = lens _tKey (\ s a -> s{_tKey = a})

-- | Continuation token specifying which results page to return. Optional.
tPageToken :: Lens' TemplateList' (Maybe Text)
tPageToken
  = lens _tPageToken (\ s a -> s{_tPageToken = a})

-- | OAuth 2.0 token for the current user.
tOauthToken :: Lens' TemplateList' (Maybe Text)
tOauthToken
  = lens _tOauthToken (\ s a -> s{_tOauthToken = a})

-- | Identifier for the table whose templates are being requested
tTableId :: Lens' TemplateList' Text
tTableId = lens _tTableId (\ s a -> s{_tTableId = a})

-- | Maximum number of templates to return. Optional. Default is 5.
tMaxResults :: Lens' TemplateList' (Maybe Word32)
tMaxResults
  = lens _tMaxResults (\ s a -> s{_tMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tFields :: Lens' TemplateList' (Maybe Text)
tFields = lens _tFields (\ s a -> s{_tFields = a})

-- | Data format for the response.
tAlt :: Lens' TemplateList' Text
tAlt = lens _tAlt (\ s a -> s{_tAlt = a})

instance GoogleRequest TemplateList' where
        type Rs TemplateList' = TemplateList
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TemplateList{..}
          = go _tQuotaUser _tPrettyPrint _tUserIp _tKey
              _tPageToken
              _tOauthToken
              _tTableId
              _tMaxResults
              _tFields
              _tAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TemplateListAPI) r
                      u
