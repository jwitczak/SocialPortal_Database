USE Social_Portal;
GO

-- Procedura znajduje zbiorki, ktore zebraly co najmniej @totalpayment pieniedzy
CREATE PROCEDURE BestFundraisings @totalpayment decimal(19,2)
AS
BEGIN
SET NOCOUNT ON;
WITH RankedFundPayments AS (
    SELECT
        F.FundID,
        SUM(P.PaymentValue) AS TotalPayment
    FROM
        Fundraisings F
    JOIN
        Payments P ON F.FundID = P.FundID
    GROUP BY
        F.FundID
)
SELECT
    F.FundID,
    F.FundPurpose,
	RFP.TotalPayment
FROM
    Fundraisings F
JOIN
    RankedFundPayments RFP ON F.FundID = RFP.FundID
WHERE
    RFP.TotalPayment > @totalpayment;
END;

--przyklad wywolania:
EXECUTE BestFundraisings 200.50
