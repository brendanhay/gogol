{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Billing.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Billing.Types.Product where

import           Network.Google.Billing.Types.Sum
import           Network.Google.Prelude

-- | A billing account in [Google Developers
-- Console](https:\/\/console.developers.google.com\/). You can assign a
-- billing account to one or more projects.
--
-- /See:/ 'billingAccount' smart constructor.
data BillingAccount = BillingAccount
    { _baOpen        :: !(Maybe Bool)
    , _baName        :: !(Maybe Text)
    , _baDisplayName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BillingAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baOpen'
--
-- * 'baName'
--
-- * 'baDisplayName'
billingAccount
    :: BillingAccount
billingAccount =
    BillingAccount
    { _baOpen = Nothing
    , _baName = Nothing
    , _baDisplayName = Nothing
    }

-- | True if the billing account is open, and will therefore be charged for
-- any usage on associated projects. False if the billing account is
-- closed, and therefore projects associated with it will be unable to use
-- paid services.
baOpen :: Lens' BillingAccount (Maybe Bool)
baOpen = lens _baOpen (\ s a -> s{_baOpen = a})

-- | The resource name of the billing account. The resource name has the form
-- \`billingAccounts\/{billing_account_id}\`. For example,
-- \`billingAccounts\/012345-567890-ABCDEF\` would be the resource name for
-- billing account \`012345-567890-ABCDEF\`.
baName :: Lens' BillingAccount (Maybe Text)
baName = lens _baName (\ s a -> s{_baName = a})

-- | The display name given to the billing account, such as \`My Billing
-- Account\`. This name is displayed in the Google Developers Console.
baDisplayName :: Lens' BillingAccount (Maybe Text)
baDisplayName
  = lens _baDisplayName
      (\ s a -> s{_baDisplayName = a})

instance FromJSON BillingAccount where
        parseJSON
          = withObject "BillingAccount"
              (\ o ->
                 BillingAccount <$>
                   (o .:? "open") <*> (o .:? "name") <*>
                     (o .:? "displayName"))

instance ToJSON BillingAccount where
        toJSON BillingAccount{..}
          = object
              (catMaybes
                 [("open" .=) <$> _baOpen, ("name" .=) <$> _baName,
                  ("displayName" .=) <$> _baDisplayName])

-- | Response message for \`ListBillingAccounts\`.
--
-- /See:/ 'listBillingAccountsResponse' smart constructor.
data ListBillingAccountsResponse = ListBillingAccountsResponse
    { _lbarNextPageToken   :: !(Maybe Text)
    , _lbarBillingAccounts :: !(Maybe [Maybe BillingAccount])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListBillingAccountsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbarNextPageToken'
--
-- * 'lbarBillingAccounts'
listBillingAccountsResponse
    :: ListBillingAccountsResponse
listBillingAccountsResponse =
    ListBillingAccountsResponse
    { _lbarNextPageToken = Nothing
    , _lbarBillingAccounts = Nothing
    }

-- | A token to retrieve the next page of results. To retrieve the next page,
-- call \`ListBillingAccounts\` again with the \`page_token\` field set to
-- this value. This field is empty if there are no more results to
-- retrieve.
lbarNextPageToken :: Lens' ListBillingAccountsResponse (Maybe Text)
lbarNextPageToken
  = lens _lbarNextPageToken
      (\ s a -> s{_lbarNextPageToken = a})

-- | A list of billing accounts.
lbarBillingAccounts :: Lens' ListBillingAccountsResponse [Maybe BillingAccount]
lbarBillingAccounts
  = lens _lbarBillingAccounts
      (\ s a -> s{_lbarBillingAccounts = a})
      . _Default
      . _Coerce

instance FromJSON ListBillingAccountsResponse where
        parseJSON
          = withObject "ListBillingAccountsResponse"
              (\ o ->
                 ListBillingAccountsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "billingAccounts" .!= mempty))

instance ToJSON ListBillingAccountsResponse where
        toJSON ListBillingAccountsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lbarNextPageToken,
                  ("billingAccounts" .=) <$> _lbarBillingAccounts])

-- | Encapsulation of billing information for a Developers Console project. A
-- project has at most one associated billing account at a time (but a
-- billing account can be assigned to multiple projects).
--
-- /See:/ 'projectBillingInfo' smart constructor.
data ProjectBillingInfo = ProjectBillingInfo
    { _pbiName               :: !(Maybe Text)
    , _pbiBillingAccountName :: !(Maybe Text)
    , _pbiProjectId          :: !(Maybe Text)
    , _pbiBillingEnabled     :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectBillingInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbiName'
--
-- * 'pbiBillingAccountName'
--
-- * 'pbiProjectId'
--
-- * 'pbiBillingEnabled'
projectBillingInfo
    :: ProjectBillingInfo
projectBillingInfo =
    ProjectBillingInfo
    { _pbiName = Nothing
    , _pbiBillingAccountName = Nothing
    , _pbiProjectId = Nothing
    , _pbiBillingEnabled = Nothing
    }

-- | The resource name for the \`ProjectBillingInfo\`; has the form
-- \`projects\/{project_id}\/billingInfo\`. For example, the resource name
-- for the billing information for project \`tokyo-rain-123\` would be
-- \`projects\/tokyo-rain-123\/billingInfo\`. This field is read-only.
pbiName :: Lens' ProjectBillingInfo (Maybe Text)
pbiName = lens _pbiName (\ s a -> s{_pbiName = a})

-- | The resource name of the billing account associated with the project, if
-- any. For example, \`billingAccounts\/012345-567890-ABCDEF\`.
pbiBillingAccountName :: Lens' ProjectBillingInfo (Maybe Text)
pbiBillingAccountName
  = lens _pbiBillingAccountName
      (\ s a -> s{_pbiBillingAccountName = a})

-- | The ID of the project that this \`ProjectBillingInfo\` represents, such
-- as \`tokyo-rain-123\`. This is a convenience field so that you don\'t
-- need to parse the \`name\` field to obtain a project ID. This field is
-- read-only.
pbiProjectId :: Lens' ProjectBillingInfo (Maybe Text)
pbiProjectId
  = lens _pbiProjectId (\ s a -> s{_pbiProjectId = a})

-- | True if the project is associated with an open billing account, to which
-- usage on the project is charged. False if the project is associated with
-- a closed billing account, or no billing account at all, and therefore
-- cannot use paid services. This field is read-only.
pbiBillingEnabled :: Lens' ProjectBillingInfo (Maybe Bool)
pbiBillingEnabled
  = lens _pbiBillingEnabled
      (\ s a -> s{_pbiBillingEnabled = a})

instance FromJSON ProjectBillingInfo where
        parseJSON
          = withObject "ProjectBillingInfo"
              (\ o ->
                 ProjectBillingInfo <$>
                   (o .:? "name") <*> (o .:? "billingAccountName") <*>
                     (o .:? "projectId")
                     <*> (o .:? "billingEnabled"))

instance ToJSON ProjectBillingInfo where
        toJSON ProjectBillingInfo{..}
          = object
              (catMaybes
                 [("name" .=) <$> _pbiName,
                  ("billingAccountName" .=) <$> _pbiBillingAccountName,
                  ("projectId" .=) <$> _pbiProjectId,
                  ("billingEnabled" .=) <$> _pbiBillingEnabled])

-- | Request message for \`ListProjectBillingInfoResponse\`.
--
-- /See:/ 'listProjectBillingInfoResponse' smart constructor.
data ListProjectBillingInfoResponse = ListProjectBillingInfoResponse
    { _lpbirNextPageToken      :: !(Maybe Text)
    , _lpbirProjectBillingInfo :: !(Maybe [Maybe ProjectBillingInfo])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListProjectBillingInfoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpbirNextPageToken'
--
-- * 'lpbirProjectBillingInfo'
listProjectBillingInfoResponse
    :: ListProjectBillingInfoResponse
listProjectBillingInfoResponse =
    ListProjectBillingInfoResponse
    { _lpbirNextPageToken = Nothing
    , _lpbirProjectBillingInfo = Nothing
    }

-- | A token to retrieve the next page of results. To retrieve the next page,
-- call \`ListProjectBillingInfo\` again with the \`page_token\` field set
-- to this value. This field is empty if there are no more results to
-- retrieve.
lpbirNextPageToken :: Lens' ListProjectBillingInfoResponse (Maybe Text)
lpbirNextPageToken
  = lens _lpbirNextPageToken
      (\ s a -> s{_lpbirNextPageToken = a})

-- | A list of \`ProjectBillingInfo\` resources representing the projects
-- associated with the billing account.
lpbirProjectBillingInfo :: Lens' ListProjectBillingInfoResponse [Maybe ProjectBillingInfo]
lpbirProjectBillingInfo
  = lens _lpbirProjectBillingInfo
      (\ s a -> s{_lpbirProjectBillingInfo = a})
      . _Default
      . _Coerce

instance FromJSON ListProjectBillingInfoResponse
         where
        parseJSON
          = withObject "ListProjectBillingInfoResponse"
              (\ o ->
                 ListProjectBillingInfoResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "projectBillingInfo" .!= mempty))

instance ToJSON ListProjectBillingInfoResponse where
        toJSON ListProjectBillingInfoResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lpbirNextPageToken,
                  ("projectBillingInfo" .=) <$>
                    _lpbirProjectBillingInfo])
