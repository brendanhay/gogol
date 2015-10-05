{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.References.Bases.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the bases in a reference, optionally restricted to a range.
-- Implements GlobalAllianceApi.getReferenceBases.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsReferencesBasesList@.
module Network.Google.Resource.Genomics.References.Bases.List
    (
    -- * REST Resource
      ReferencesBasesListResource

    -- * Creating a Request
    , referencesBasesList'
    , ReferencesBasesList'

    -- * Request Lenses
    , rblQuotaUser
    , rblPrettyPrint
    , rblUserIP
    , rblStart
    , rblReferenceId
    , rblKey
    , rblEnd
    , rblPageToken
    , rblOAuthToken
    , rblPageSize
    , rblFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReferencesBasesList@ which the
-- 'ReferencesBasesList'' request conforms to.
type ReferencesBasesListResource =
     "references" :>
       Capture "referenceId" Text :>
         "bases" :>
           QueryParam "start" Int64 :>
             QueryParam "end" Int64 :>
               QueryParam "pageToken" Text :>
                 QueryParam "pageSize" Int32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListBasesResponse

-- | Lists the bases in a reference, optionally restricted to a range.
-- Implements GlobalAllianceApi.getReferenceBases.
--
-- /See:/ 'referencesBasesList'' smart constructor.
data ReferencesBasesList' = ReferencesBasesList'
    { _rblQuotaUser   :: !(Maybe Text)
    , _rblPrettyPrint :: !Bool
    , _rblUserIP      :: !(Maybe Text)
    , _rblStart       :: !(Maybe Int64)
    , _rblReferenceId :: !Text
    , _rblKey         :: !(Maybe Key)
    , _rblEnd         :: !(Maybe Int64)
    , _rblPageToken   :: !(Maybe Text)
    , _rblOAuthToken  :: !(Maybe OAuthToken)
    , _rblPageSize    :: !(Maybe Int32)
    , _rblFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesBasesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rblQuotaUser'
--
-- * 'rblPrettyPrint'
--
-- * 'rblUserIP'
--
-- * 'rblStart'
--
-- * 'rblReferenceId'
--
-- * 'rblKey'
--
-- * 'rblEnd'
--
-- * 'rblPageToken'
--
-- * 'rblOAuthToken'
--
-- * 'rblPageSize'
--
-- * 'rblFields'
referencesBasesList'
    :: Text -- ^ 'referenceId'
    -> ReferencesBasesList'
referencesBasesList' pRblReferenceId_ =
    ReferencesBasesList'
    { _rblQuotaUser = Nothing
    , _rblPrettyPrint = True
    , _rblUserIP = Nothing
    , _rblStart = Nothing
    , _rblReferenceId = pRblReferenceId_
    , _rblKey = Nothing
    , _rblEnd = Nothing
    , _rblPageToken = Nothing
    , _rblOAuthToken = Nothing
    , _rblPageSize = Nothing
    , _rblFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rblQuotaUser :: Lens' ReferencesBasesList' (Maybe Text)
rblQuotaUser
  = lens _rblQuotaUser (\ s a -> s{_rblQuotaUser = a})

-- | Returns response with indentations and line breaks.
rblPrettyPrint :: Lens' ReferencesBasesList' Bool
rblPrettyPrint
  = lens _rblPrettyPrint
      (\ s a -> s{_rblPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rblUserIP :: Lens' ReferencesBasesList' (Maybe Text)
rblUserIP
  = lens _rblUserIP (\ s a -> s{_rblUserIP = a})

-- | The start position (0-based) of this query. Defaults to 0.
rblStart :: Lens' ReferencesBasesList' (Maybe Int64)
rblStart = lens _rblStart (\ s a -> s{_rblStart = a})

-- | The ID of the reference.
rblReferenceId :: Lens' ReferencesBasesList' Text
rblReferenceId
  = lens _rblReferenceId
      (\ s a -> s{_rblReferenceId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rblKey :: Lens' ReferencesBasesList' (Maybe Key)
rblKey = lens _rblKey (\ s a -> s{_rblKey = a})

-- | The end position (0-based, exclusive) of this query. Defaults to the
-- length of this reference.
rblEnd :: Lens' ReferencesBasesList' (Maybe Int64)
rblEnd = lens _rblEnd (\ s a -> s{_rblEnd = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
rblPageToken :: Lens' ReferencesBasesList' (Maybe Text)
rblPageToken
  = lens _rblPageToken (\ s a -> s{_rblPageToken = a})

-- | OAuth 2.0 token for the current user.
rblOAuthToken :: Lens' ReferencesBasesList' (Maybe OAuthToken)
rblOAuthToken
  = lens _rblOAuthToken
      (\ s a -> s{_rblOAuthToken = a})

-- | Specifies the maximum number of bases to return in a single page.
rblPageSize :: Lens' ReferencesBasesList' (Maybe Int32)
rblPageSize
  = lens _rblPageSize (\ s a -> s{_rblPageSize = a})

-- | Selector specifying which fields to include in a partial response.
rblFields :: Lens' ReferencesBasesList' (Maybe Text)
rblFields
  = lens _rblFields (\ s a -> s{_rblFields = a})

instance GoogleAuth ReferencesBasesList' where
        authKey = rblKey . _Just
        authToken = rblOAuthToken . _Just

instance GoogleRequest ReferencesBasesList' where
        type Rs ReferencesBasesList' = ListBasesResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReferencesBasesList'{..}
          = go _rblReferenceId _rblStart _rblEnd _rblPageToken
              _rblPageSize
              _rblQuotaUser
              (Just _rblPrettyPrint)
              _rblUserIP
              _rblFields
              _rblKey
              _rblOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReferencesBasesListResource)
                      r
                      u
